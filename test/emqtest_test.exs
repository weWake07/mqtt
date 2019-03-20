defmodule EMQTESTTest do
  use ExUnit.Case
  doctest EMQTEST

  test "greets the world" do
    assert EMQTEST.hello() == :world
  end
end
