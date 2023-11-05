defmodule BeecrowdTest do
  use ExUnit.Case
  doctest Beecrowd

  test "greets the world" do
    assert Beecrowd.hello() == :world
  end
end
