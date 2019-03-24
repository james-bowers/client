defmodule Test.Support.Bowers.HTTPClient do
  alias Bowers.HTTPClient

  @behaviour HTTPClient

  @impl HTTPClient
  def handle(struct = Struct), do: struct
end
