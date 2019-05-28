# run using ruby:
#
#   > ruby _tools/submission_converter.rb
#
# reads input from 'submissions.csv' in the current directory,
# converts rows to hashes representing submissions, and prints out
# the submissions, grouped by track, into separate YAML files:
#
# demonstration.yaml
# papers.yaml
# workshops.yaml
# etc.
#
# Currently, the script expects the input CSV file to be filtered to
# only include accepted submissions.
#
# Adjust the content of the key_map hash to control which columns from
# the CSV are included in the resulting YAML, and how names are
# converted from CSV column names to YAML keys.  New columns can be
# added by adding the desired columns/values to the CSV, and then adding
# the new column names to the key_map.

require 'csv'
require 'yaml'

# Converts one row of a CSV to a corresponding hash, where column
# names are used as keys mapped to the corresponding row values.
#
# +row+:: An array representing a single row of a CSV file
# +columns+:: An array representing the column names, which should be the same
# length as +row+.
# +key_map+:: A hash from column names to key names.  Only columns appearing
# in this map will be included in the resulting hash (other columns are
# ignored).  This map serves as a translation table from CSV column names
# to corresponding keys that should be used in the hash.
#
# Returns a new hash containing the row's values associated with the
# corresponding column's keys.
#
def row_to_hash(row, columns, key_map)
  hash = {}
  (0..columns.length - 1).each do |i|
    # First, convert the column name using the translation table
    key = key_map[columns[i]]

    # Only process column if it's name is included in translation table
    if key
      value = row[i]
      # For string values, convert carriage returns to newlines, since
      # EasyChair form-entered newlines appear to be stored as CRs in
      # the exported data.  This is primarily for the abstract field,
      # but this code performs the mapping on all string-valued columns
      if value && value.is_a?(String)
        value.gsub!(/\r/, "\n")
      end

      # Now store the value in the hash we're building
      hash[key] = value
    end
  end
  # Return the hash created from the array representing a CSV row
  hash
end

key_map = {
  'track name' => 'track',
  'title' => 'title',
  'authors' => 'authors',
  'abstract' => 'abstract',
}
columns = nil
subs = {}

# Main loop for incoming CSV ... could use argument instead of hard-coded
# file name if desired ...
#
# Main loop assumes CSV only contains accepted submissions.  Filtering
# could be added if desired.
#
CSV.foreach('submissions.csv', encoding: 'ISO-8859-1') do |row|
  if !columns
    columns = row
  else
    # convert this submission into a hash from the CSV row
    sub = row_to_hash(row, columns, key_map)

    # extract the track name for this submission
    track = sub['track'].downcase

    # initialize the list of subs for this track, if necessary
    if !subs.has_key? track
      subs[track] = []
    end

    # remove the track name from the submission
    sub.delete('track')

    # Add this sub to the list of subs for its track
    subs[track].push(sub)
  end
end

subs.each do |track, track_subs|
  File.write(track + 's.yaml', track_subs.to_yaml)
end
