defmodule Bowers.Me.Person do
  @http_client Application.get_env(:bowers, :http_client)

  def login(attrs = %{password: _password, email: _email}) do
    @http_client.post(:me, "/person/login", attrs)
  end

  def sign_up(attrs = %{password: _password, email: _email}) do
    @http_client.post(:me, "/person/sign-up", attrs)
  end
end
