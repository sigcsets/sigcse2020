# Here are the API docs for the Documents base
# https://airtable.com/appkeaOULuXaWL3wS/api/docs#curl/introduction
from util import *


# CONTRACT
# get_all_documents : none -> list
# PURPOSE
# Returns a list of JSON values that represent rows in the document base.
def get_all_documents ():
    airtable = Airtable('appkeaOULuXaWL3wS', 'Documents', api_key = get_api_key())
    rows = airtable.get_all()
    limit_rate()
    return rows
    
rows = get_all_documents()

# Now, put the docs in the correct place.

# {'id': 'recazJkFZ28jaQMnx', 'fields': {'Name': 'SIGCSE 2020 CFP', 'File': [{'id': 'att1trovATsopXX2u', 'url': 'https://dl.airtable.com/.attachments/c1f9119caa9fd82971c810b240da5bca/50368203/SIGCSE2020CFP_7.pdf', 'filename': 'SIGCSE2020CFP_7.pdf', 'size': 126830, 'type': 'application/pdf', 'thumbnails': {'small': {'url': 'https://dl.airtable.com/.attachmentThumbnails/0e6a52ba68d29c815261d086a72f360a/b99db7c6', 'width': 28, 'height': 36}, 'large': {'url': 'https://dl.airtable.com/.attachmentThumbnails/51eea9a0adaa3628ad11b36c32d89082/e09b1268', 'width': 396, 'height': 512}}}], 'Destination Name': 'sigcse2020-cfp.pdf', 'Destination Path': 'docs'}, 'createdTime': '2019-02-21T19:39:33.000Z'}

for row in rows:
    # print(row)
    fields      = row['fields']
    the_file    = fields['File'][0]
    # Assume we only have one file per row.
    dest_name   = fields['Destination Name']
    dest_path   = fields['Destination Path']
    binary_data = retrieve_url(the_file['url'])
    outfilename = get_root_dir() + '/' + dest_path + '/' + dest_name
    print('Writing ' + outfilename)
    outp = open(outfilename, 'wb')
    outp.write(binary_data)
    outp.close()


