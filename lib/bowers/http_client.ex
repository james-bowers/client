defmodule Bowers.HTTPClient do
  @callback post(Atom.t(), String.t(), Map.t()) :: Map
  @callback get(Atom.t(), String.t()) :: Map
  @services [:me, :order_system]

  def post(service, path, payload)
      when is_binary(path) and service in @services and is_map(payload) do
    HTTPoison.post(
      host(service) + path,
      Poison.decode!(payload),
      [{"Content-Type", "application/json"}]
    )
  end

  def get(service, path) when is_binary(path) and service in @services do
    HTTPoison.get(
      host(service) + path,
      [{"Content-Type", "application/json"}]
    )
  end

  defp host(service) when service in @services do
    Application.get_env(:bowers, service)
  end
end
