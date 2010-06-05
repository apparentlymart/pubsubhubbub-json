all: html txt

clean:
	rm -rf build

prepare:
	mkdir -p build

html: prepare pubsubhubbub-json.xml
	xml2rfc pubsubhubbub-json.xml build/pubsubhubbub-json.html

txt: prepare pubsubhubbub-json.xml
	xml2rfc pubsubhubbub-json.xml build/pubsubhubbub-json.txt


