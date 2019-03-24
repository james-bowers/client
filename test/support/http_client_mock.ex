defmodule Test.Support.Bowers.HTTPClient do
  alias Bowers.HTTPClient

  @behaviour HTTPClient

  @impl HTTPClient
  def post(_service, _path, _payload), do: :ok

  @impl HTTPClient
  def get(_service, _path), do: :ok
end
