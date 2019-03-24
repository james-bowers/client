defmodule Bowers.Me.Role do
  @http_client Application.get_env(:bowers, :http_client)

  def validate(token) do
    @http_client.post(:me, "/role/validate", %{token: token})
  end
end
