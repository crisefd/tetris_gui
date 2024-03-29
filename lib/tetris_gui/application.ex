defmodule TetrisGui.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false
  alias Phoenix.PubSub
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      TetrisGuiWeb.Endpoint,
      {PubSub, [name: TetrisGui.PubSub, adapter: PubSub.PG2]}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: TetrisGui.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    TetrisGuiWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
