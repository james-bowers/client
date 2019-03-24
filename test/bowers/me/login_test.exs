defmodule Test.Bowers.Me.Person do
  use ExUnit.Case
  alias Bowers.Me.Person
  alias Test.Support.Bowers.HTTPClient

  use Test.Support.Helper, :ingress_mox

  test "login a person" do
    HTTPClient
    |> expect(:post, fn :me, "/person/login", %{password: "pass", email: "tester@bowers.dev"} ->
      :ok
    end)

    assert Person.login(%{
             password: "pass",
             email: "tester@bowers.dev"
           })
  end

  test "sign up a new person" do
    HTTPClient
    |> expect(:post, fn :me, "/person/sign-up", %{password: "pass", email: "tester@bowers.dev"} ->
      :ok
    end)

    assert Person.sign_up(%{
             password: "pass",
             email: "tester@bowers.dev"
           })
  end
end
