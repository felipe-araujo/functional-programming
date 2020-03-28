defmodule Solution do
  def solve() do
    n = IO.read(:stdio, :line)
      |> String.trim
      |> String.to_integer

    not_function =  Enum.to_list(1..n)
      |> Enum.map(fn _ -> IO.read(:stdio, :line) |> String.trim |> String.split(" ") end)
      |> Enum.map(fn [x, _y] -> x end)
      |> has_duplicates?
      #|> Enum.frequencies
      #|> Enum.any?(fn ({_x, count_fx }) -> count_fx == 1 end)

    if not_function, do: IO.puts('NO'), else: IO.puts('YES')

  end

  def has_duplicates?(list) do
    list
      |> Enum.reduce_while([], fn x, acc ->
        if x in acc, do: {:halt, 0}, else: {:cont, [x | acc]}
      end)
      |> is_integer()
  end

end


t = IO.read(:stdio, :line)
  |> String.trim
  |> String.to_integer

Enum.to_list(1..t)
  |> Enum.each( fn _ -> Solution.solve end)
