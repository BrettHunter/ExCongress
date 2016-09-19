defmodule ExCongress.Client do
  defstruct auth: nil, endpoint: "https://congress.api.sunlightfoundation.com"

  @type auth :: %{api_key: binary}
  @type t :: %__MODULE__{auth: auth, endpoint: binary}

  @spec new() :: t
  def new(), do: %__MODULE__{}

  @spec new(auth) :: t
  def new(auth),  do: %__MODULE__{auth: auth}

end