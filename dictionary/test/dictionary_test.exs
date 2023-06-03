defmodule DictionaryTest do
  use ExUnit.Case
  doctest Dictionary

  test "start returns a word list" do
    words = Dictionary.start()
    assert words |> is_list()
    [head | _tail] = words
    assert head |> is_binary()
  end

  test "random_word returns a string" do
    words = Dictionary.start()
    assert Dictionary.random_word(words) |> is_binary()
  end
end
