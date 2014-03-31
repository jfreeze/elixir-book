# Usage

This 'project' pulls the Elixir book down from github and formats it for softcover.
It also includes the Ex\_unit and the Mix documentation at the end.

The best way to use this project is to __not__ use it, but just __download the ebooks__. Links are provided below for the published books in the ebooks/ directory.

* [elixir-book.pdf](https://github.com/jfreeze/elixir-book/raw/master/ebooks/elixir-book.pdf)
* [elixir-book.epub](https://github.com/jfreeze/elixir-book/raw/master/ebooks/elixir-book.epub)
* [elixir-book.mobi](https://github.com/jfreeze/elixir-book/raw/master/ebooks/elixir-book.mobi)

# Installation

If you want to support this project and build the books yourself, first install softcover:

    gem install softcover

and follow the instructions to complete the softcover install.
(Softcover requires extensive supporting installs.
(Be aware that install time can take a while if you don't have the supporting tools installed.)

Then, clone this repository and run the commands below:

    git clone git@github.com:jfreeze/elixir-book.git
    cd elixir-book
    ./download-source.sh
    ./process.rb
    sc build


## Caveats

This intent of this project was to get reasonably clean PDF and mobile versions of the online Elixir Getting Started documents.
For the most part, it does just that, but note there are some broken external links.
However, I don't believe this impedes the delivery of the content.

There are some bugs in the https://github.com/elixir-lang/elixir-lang.github.com markdown files that have not been corrected yet. These problems are fixed with the process.rb script.

## TODOS

If you want to help improve this project, below are a few ways to help.

* Add a Book Cover Page. Graphic in form of .png and .pdf.
* Add task to `process.rb` to get all the contributor names and add them to the preface section.
* Create pull requests to the source project to fix the few existing markdown problems.
* Fix the relative web links in the markdown to work with softcover.
* Host the HTML version of this book on the web.


