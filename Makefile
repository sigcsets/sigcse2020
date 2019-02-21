sigcse=2020
destination=/home/sigcse/public_html/sigcse$(sigcse)

test:
	python _build/fetch_docs.py
	python _build/write_links.py
	bundle exec jekyll s

upload:
	@echo "Uploading to $(destination)"
	rsync -vr \
    -e "ssh -p 7822 -i ~/.ssh/sigcse-key" _site/ \
    sigcse@sigcse.hosting.acm.org:$(destination)

