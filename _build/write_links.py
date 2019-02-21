from util import *

def get_all_links ():
    airtable = Airtable('app0d3d2FvcltBhSW', 'Links', api_key = get_api_key())
    rows = airtable.get_all()
    limit_rate()
    return rows

# {'id': 'recjz1cUGUx1hF6Zm', 'fields': {'key': 'call_for_reviewers', 'href': 'http://sigcse2020.org/reviewing'}, 'createdTime': '2019-02-21T20:29:06.000Z'}
links = get_all_links()
write_yaml('links.yaml', links)

urls = {}

for link in links:
    fields = link['fields']
    urls[fields['key']] = fields['href']

outf = open(get_root_dir() + '/_data/' + 'links.yaml', 'w')

# https://stackoverflow.com/questions/9001509/how-can-i-sort-a-dictionary-by-key
sorted = sort_dictionary(urls)
for k, v in sorted.items():
    outf.write("{0}: {1}".format(k, v))
    outf.write('\n')

outf.close()