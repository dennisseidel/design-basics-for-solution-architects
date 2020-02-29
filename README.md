**Intial Source:**  https://gitlab.com/pianomanfrazier/pandoc-markdown-book

# Sample Book

To make this book you will need:

- pandoc v2.7.3
- [pandoc-crossref](https://github.com/lierdakil/pandoc-crossref)
- latex

Then run the script for the output you want to build.

Alternativly you can extend the base image and build it yourself from this [repository](https://github.com/denseidel/pandoc-docker).

```bash
make build-pdf
```

The script will make a PDF (or HTML or epub) in the build directory.

If you want the ebook available on Kindle you will need to grab the [kindlegen](https://www.amazon.com/gp/feature.html?docId=1000765211). Then feed the epub file to kindlegen and you will have a mobi version of your book.

```bash
./kindlegen ./build/output.epub
```

## License

You are free to use these scripts however you like.

## Other projects used

Many thanks to the [Eisvogel pandoc-latex-template](https://github.com/Wandmalfarbe/pandoc-latex-template) and the [pandoc-crossref](https://github.com/lierdakil/pandoc-crossref) filter.

The background image in `/backgrounds` is from the Eisvogel project.


## Todos

- Update the `/src/title.txt` with the metadata.
- Upate the `/img/*cover.*` with a cover create with [canva](https://www.canva.com/folder/FADyk7hnY20). Select a [top animal](https://www.boredpanda.com/cutest-baby-animals/?utm_source=google&utm_medium=organic&utm_campaign=organic), [remove background](https://www.remove.bg/) and then put a filter on it.