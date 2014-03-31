# Document README 

This is a 'hack' to quickly pull the Elixir book down and format it for softcover.

There are some glitches with a few of the external links, but it doesn't get in the way of the content.

I have added the Ex\_unit and the Mix documentation to the end of this book.

There are some bugs in the https://github.com/elixir-lang/elixir-lang.github.com markdown files that have not been corrected yet. These problems are fixed with the process.rb script.

# Usage

The best way to use this project is to *not* use it. It requires softcover, which requires lots of supporting installs. The best thing is to just download the book format you need from the ebooks folder:

* elixir-book.epub
* elixir-book.mobi
* [https://github.com/jfreeze/elixir-book/blob/master/ebooks/elixir-book.pdf](elixir-book.pdf)


If you want to support this project and build the books yourself, simply do:

    gem install softcover

and follow the instructions to complete the install.

    git clone git@github.com:jfreeze/elixir-book.git
    cd elixir-book
    ./download-source.sh
    ./process.rb
    sc build

## TODOS

There are lots of things to do that can improve this project. Below are just a few if you want to help.

* Add a Book Cover Page. Graphic in form of .png and .pdf.
* Add task to `process.rb` to get all the contributor names and add them to the preface section.
* Create pull requests to the source project to fix the few existing markdown problems.
* Fix the relative web links in the markdown to work with softcover.
* Host the HTML version of this book on the web.

