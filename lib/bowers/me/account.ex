defmodule Bowers.Me.Account do
  @http_client Application.get_env(:bowers, :http_client)

  def create() do
    @http_client.post(:me, "/account", %{})
  end
end
