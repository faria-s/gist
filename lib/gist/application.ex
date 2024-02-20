defmodule Gist.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      GistWeb.Telemetry,
      # Start the Ecto repository
      Gist.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Gist.PubSub},
      # Start Finch
      {Finch, name: Gist.Finch},
      # Start the Endpoint (http/https)
      GistWeb.Endpoint
      # Start a worker by calling: Gist.Worker.start_link(arg)
      # {Gist.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Gist.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    GistWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
