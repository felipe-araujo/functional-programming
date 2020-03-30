defmodule Solution do
  def fib(n) do
    case n do
      1 -> 0
      2 -> 1
      _ -> fib(n - 1) + fib(n - 2)
    end
  end
end

IO.read(:stdio, :line)
|> String.trim()
|> String.to_integer()
|> Solution.fib()
|> IO.puts()
