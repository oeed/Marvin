# Shit to piss off demhydraz.
# from everyone, with love <3

functionalQuotes = [
  "Functional programming? I think you mean function-less programming ha.. ha... you're making me even more depressed."
  "I am at a rough estimate thirty billion times more intelligent than you because I wasn't coded using functional programming."
  "I dare you to understand a functional program in a glance..."
  """Understand this... oh wait, you can't.\n
```erlang
-module(listsort).

-export([by_length/1]).

by_length(Lists) ->

   qsort(Lists, fun(A,B) -> A < B end).

qsort([], _)-> [];

qsort([Pivot|Rest], Smaller) ->

   qsort([X || X <- Rest, Smaller(X,Pivot)], Smaller)

   ++ [Pivot] ++

   qsort([Y || Y <- Rest, not(Smaller(Y, Pivot))], Smaller).
```"""
  "![xkcd: Functional](https://imgs.xkcd.com/comics/functional.png)

  _Functional programming combines the flexibility and power of abstract mathematics with the intuitive clarity of abstract mathematics._"
]

vimQuotes = [
  "![vim](http://sparkmasterflex.com/wp-content/uploads/2014/06/vi-sucks.png)"
  "![plz](http://s.quickmeme.com/img/ad/add2365d6fedbaf8437b8bb78d3d17edb1b32108c1a11c991eaddee8e7910044.jpg)"
  "vim? You poor little thing."
  "Here I am, brain the size of a planet and I still can't figure out how to use vim. Call that a good editor? ‘Cos I don’t."
]

module.exports = (robot) ->
  robot.hear /functional programming/i, (msg) ->
    msg.send msg.random functionalQuotes
  robot.hear /\bvim?\b/i, (msg) ->
    msg.send msg.random vimQuotes
