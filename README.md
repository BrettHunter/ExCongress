# ExCongress    

ExCongress is an Elixir wrapper for the [Sunlight Labs Congress API](https://github.com/sunlightlabs/congress). 

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add ex_congress to your list of dependencies in `mix.exs`:

        def deps do
          [{:ex_congress, "~> 0.0.1"}]
        end

  2. Ensure ex_congress is started before your application:

        def application do
          [applications: [:ex_congress]]
        end

## Example Usage

    `   ssn = ExCongress.Client.new(%{api_key: "${API_KEY}"})
        legislators = ExCongress.Legislators.list(ssn, %{"fields" => "bioguide_id", "per_page" => "100"})`