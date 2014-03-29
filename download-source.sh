#!/bin/sh

cd chapters

curl -O https://raw.githubusercontent.com/elixir-lang/elixir-lang.github.com/master/getting_started/1.markdown
curl -O https://raw.githubusercontent.com/elixir-lang/elixir-lang.github.com/master/getting_started/2.markdown
curl -O https://raw.githubusercontent.com/elixir-lang/elixir-lang.github.com/master/getting_started/3.markdown
curl -O https://raw.githubusercontent.com/elixir-lang/elixir-lang.github.com/master/getting_started/4.markdown
curl -O https://raw.githubusercontent.com/elixir-lang/elixir-lang.github.com/master/getting_started/5.markdown
curl -O https://raw.githubusercontent.com/elixir-lang/elixir-lang.github.com/master/getting_started/6.markdown
curl -O https://raw.githubusercontent.com/elixir-lang/elixir-lang.github.com/master/getting_started/7.markdown

mkdir ex_unit
cd ex_unit
curl -O https://raw.githubusercontent.com/elixir-lang/elixir-lang.github.com/master/getting_started/ex_unit/1.markdown

cd ..
mkdir mix
cd mix
curl -O https://raw.githubusercontent.com/elixir-lang/elixir-lang.github.com/master/getting_started/mix/1.markdown
curl -O https://raw.githubusercontent.com/elixir-lang/elixir-lang.github.com/master/getting_started/mix/2.markdown
curl -O https://raw.githubusercontent.com/elixir-lang/elixir-lang.github.com/master/getting_started/mix/3.markdown

