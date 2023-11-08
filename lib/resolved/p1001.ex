defmodule Resolved.P1001 do
  def main() do
    a = IO.gets("A > ")
      |> String.replace("\n", "")
      |> String.to_integer()

    b = IO.gets("B > ")
      |> String.replace("\n", "")
      |> String.to_integer()

    sum({:ok, [a, b]})
  end

  def sum({:ok, values}) do
    [a, b] = values
    x = a + b
    IO.puts("X = #{x}")
  end
end

Resolved.P1001.main()
