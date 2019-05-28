import csv, sys

supportercount = 0
indent_char = "  "
# DAY,NUMBER,TIME,COMPANY,LEVEL,SESSIONTITLE,ROOM,PRESENTERS,CONTENT,,NOTES,DAVE,"Good for Student Volunteers 

def rowString (indent, key):
  dup = indent_char * indent
  return "{0}{1}: \"{2}\"".format(dup, key.lower(), row[key])

with open(sys.argv[1], 'rb') as csvfile:
  reader = csv.DictReader(csvfile) # delimiter=' ', quotechar='|'
  for row in reader:
    # print ("- supporter_{0}".format(supportercount))
    print ("-")
    supportercount += 1
    print(rowString(1, "DAY"))
    print(rowString(1, "NUMBER"))
    print(rowString(1, "TIME"))
    print(rowString(1, "COMPANY"))
    print(rowString(1, "SESSIONTITLE"))
    print(rowString(1, "ROOM"))
    print(indent_char + "presenters: ")
    for p in row["PRESENTERS"].split("\n"):
      print(indent_char + indent_char + "- \"{0}\"".format(p))
    cleancontent = row["CONTENT"]
    cleancontent = cleancontent.replace('"', '\\"')
    # cleancontent = '"' + cleancontent + '"'
    row["CONTENT"] = cleancontent
    print(rowString(1, "CONTENT"))

    
