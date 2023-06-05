defmodule Procs do
  def greeting(what_to_say, count) do
    receive do
      { :crash, reason } ->
        exit(reason)
      { :quit } ->
        IO.puts "See ya!"
      { :reset } ->
        greeting(what_to_say, 0)
      { :add, n } ->
        greeting(what_to_say, count + n)
      { :say, saying } ->
        greeting(saying, count)
      msg ->
        IO.puts("[#{count}] #{what_to_say}: #{msg}")
        greeting(what_to_say, count)
      end
  end
end
