n = IO.read(:stdio, :line)
  |> String.trim
  |> String.to_integer

points = Enum.to_list(1..n)
  |> Enum.map(fn _ -> IO.read(:stdio, :line) end)
  |> Enum.map(&String.trim/1)
  |> Enum.map(fn line -> String.split(line, " ") end)
  |> Enum.map( fn [a, b] -> [String.to_integer(a), String.to_integer(b)] end)

Enum.zip(tl(points)++[hd(points)], points)
  |> Enum.map( fn {[x1, y1], [x2, y2]} -> :math.pow(x1-x2, 2) + :math.pow(y1-y2, 2) end)
  |> Enum.map(&:math.sqrt/1)
  |> Enum.sum
  |> IO.puts()
