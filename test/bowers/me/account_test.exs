
defmodule Test.Bowers.Me.Account do
  use ExUnit.Case
  alias Bowers.Me.Account
  alias Test.Support.Bowers.HTTPClient

  use Test.Support.Helper, :ingress_mox

  test "create an account, with no people attached" do
    HTTPClient
    |> expect(:post, fn :me, "/account", %{} ->
      :ok
    end)

    assert Account.create()
  end
end
