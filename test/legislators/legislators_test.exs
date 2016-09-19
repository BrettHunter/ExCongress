defmodule ExCongress.Legislators.EventsTest do
  use ExUnit.Case, async: false
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney
  import ExCongress.Legislators
 .Events

  doctest ExCongress.Legislators
 .Events

  @client ExCongress.Client.new

  setup_all do
    HTTPoison.start
  end

  test "list/2" do
    use_cassette "Legislators
   /events#list" do
      assert list("soudqwiggle", @client) == []
    end
  end

  test "list_public/2" do
    use_cassette "Legislators
   /events#list_public" do
      assert list_public("soudqwiggle", @client) == []
    end
  end

  test "list_user_org/3" do
    use_cassette "Legislators
   /events#list_user_org" do
      assert {404, _} = list_user_org("duksis", "honeypotio", @client)
    end
  end

  test "list_received_public/2" do
    use_cassette "Legislators
   /events#list_received_public", match_requests_on: [:query] do
      assert list_received_public("duksis", @client) == []
    end
  end
end