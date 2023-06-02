defmodule DictionaryTest do
  use ExUnit.Case
  doctest Dictionary

  test "random_word returns a string" do
    assert Dictionary.random_word |> is_binary()
  end
end
