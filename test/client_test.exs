defmodule ExCongress.ClientTest do
  use ExUnit.Case
  import ExCongress.Client

  doctest ExCongress.Client

  test "default endpoint" do
    client = new(%{})
    assert client.endpoint == "https://api.github.com/"
  end

  test "custom endpoint" do
    expected = "https://ghe.foo.com/api/v3/"

    client = new(%{}, "https://ghe.foo.com/api/v3/")
    assert client.endpoint == expected

    # when tailing '/' is missing
    client = new(%{}, "https://ghe.foo.com/api/v3")
    assert client.endpoint == expected
  end
end