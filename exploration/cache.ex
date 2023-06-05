defmodule Cache do
  def run(func) do
    {:ok, pid} = Agent.start_link(fn -> %{0 => 0, 1 => 1} end)
    result = func.(pid)
    Agent.stop(pid)
    result
  end

  def get(cache, n, if_not_found) do
    Agent.get(cache, fn map -> map[n] end)
    |> eval_if_not_found(cache, n, if_not_found)
  end

  defp eval_if_not_found(nil, cache, n, if_not_found) do
    if_not_found.()
    |> set(cache, n)
  end
  defp eval_if_not_found(value, _cache, _n, _if_not_found) do
    value
  end

  defp set(value, cache, n) do
    Agent.get_and_update(cache, fn map -> {value, Map.put(map, n, value)} end)
  end
end
