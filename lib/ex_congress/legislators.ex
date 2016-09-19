defmodule ExCongress.Legislators do
  import ExCongress
  alias ExCongress.Client

  @doc """
  Get Legislators
  ## Example
      ExCongress.Legislators.list client, %{"fields" => "bioguide_id", "per_page" => "100"}
  More info at: https://sunlightlabs.github.io/congress/legislators.html
  """
  @spec list(Client.t) :: ExCongress.response
  def list(client \\ %Client{}, params \\ [], options \\ []) do
    get "/legislators", client, params, Keyword.merge([pagination: :auto], options)
  end

end
