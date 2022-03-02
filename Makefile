SRCFILES:=$(wildcard src/*.md)

all: dist/book.pdf

dist/book.pdf: $(SRCFILES)
	pandoc -o ./dist/book.pdf --template=eisvogel --metadata-file=metadata.txt ./src/*.md --table-of-contents

clean:
	rm dist/book.pdf
