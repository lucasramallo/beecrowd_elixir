# defmodule Main do
#   def main() do
#     Read_File.read("../input.dat", "\n")
#     |> sum()
#   end

#   def sum({:ok, values}) do
#     a = Enum.at(values, 0)
#     b = Enum.at(values, 1)
#     a = String.to_integer(a)
#     b = String.to_integer(b)
#     x = a + b
#     IO.puts("X = #{x}")
#   end

#   def sum({:error, reason}), do: {:error, reason}
# end


# defmodule Read_File do
#   def read(file, split) do
#     File.read(file)
#     |> handle_read_file()
#     |> get_values(split)
#   end

#   defp handle_read_file({:ok, res}) do
#     {:ok, res}
#   end

#   defp handle_read_file({:error, reason}) do
#     {:error, reason}
#   end

#   def get_values({:ok, values}, split) do
#     split_content = String.split(values, split)

#     content = Enum.map(split_content, fn el ->
#       String.replace(el, "\r", "")
#     end)

#     {:ok, content}
#   end

#   def get_values({:error, reason}, _), do: {:error, reason}
# end

# Main.main()
