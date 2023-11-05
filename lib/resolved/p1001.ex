defmodule Main do
  def main() do
    a = IO.gets("") |> String.replace("\n", "")
    b = IO.gets("") |> String.replace("\n", "")

    sum({:ok, [a, b]})
  end

  def sum({:ok, values}) do
    a = Enum.at(values, 0)
    b = Enum.at(values, 1)
    a = String.to_integer(a)
    b = String.to_integer(b)
    x = a + b
    IO.puts("X = #{x}")
  end

  def sum({:error, reason}), do: {:error, reason}
end

Main.main()
