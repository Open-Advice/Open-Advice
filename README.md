# Open Advice

This is the repository for the Open Advice book. You can find the LaTeX source
of the book here.

## Building a PDF

To build a pdf file out of the LaTeX source install pdflatex and run the command

    make

If you don't have make, you can run:

    pdflatex Open-Advice

## Updating the book after changes

If you have made local changes to the source of the book and want to render a
PDF again:

    make clean
    make

## Installing pdflatex

On Debian-based systems, you can install "pdflatex" with:

    sudo apt-get install texlive-latex-extra

## Issues

    "File `todonotes.sty' not found."

This means you need to run the above apt-get command, because you are missing one of the LaTeX extra packages.

## License

The book and its content is licenced under CC-BY-SA. For questions about the
book contact Lydia Pintscher at lydia@kde.org.
