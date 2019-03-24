defmodule Test.Bowers.Me.Role do
  use ExUnit.Case
  alias Bowers.Me.Role
  alias Test.Support.Bowers.HTTPClient

  use Test.Support.Helper, :ingress_mox

  test "validate a role token" do
    HTTPClient
    |> expect(:post, fn :me, "/role/validate", %{token: "fake-token"} ->
      :ok
    end)

    assert Role.validate("fake-token")
  end
end