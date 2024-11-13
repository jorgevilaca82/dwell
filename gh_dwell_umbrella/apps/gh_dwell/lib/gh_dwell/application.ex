defmodule Dwell.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Dwell.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Dwell.PubSub},
      # Start Finch
      {Finch, name: Dwell.Finch}
      # Start a worker by calling: Dwell.Worker.start_link(arg)
      # {Dwell.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: Dwell.Supervisor)
  end
end
