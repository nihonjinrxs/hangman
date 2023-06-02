defmodule Lists do
  def len([]), do: 0
  def len([_head|tail]), do: 1 + len(tail)

  def sum([]), do: 0
  def sum([head|tail]), do: head + sum(tail)

  def square([]), do: []
  def square([head|tail]), do: [head * head | square(tail)]

  def double([]), do: []
  def double([head|tail]), do: [2 * head | double(tail)]

  def map([], _func), do: []
  def map([ head | tail ], func), do: [ func.(head) | map(tail, func) ]

  def sum_pairs([]), do: []
  def sum_pairs([ head1, head2 | tail ]), do: [ head1 + head2 | sum_pairs(tail)]

  def even_length?([]), do: true
  def even_length?([_head]), do: false
  def even_length?([ _head1, _head2 | tail ]), do: even_length?(tail)
end
