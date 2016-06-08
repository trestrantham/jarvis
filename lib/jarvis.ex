defmodule Jarvis do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(Jarvis.Robot, []),
    ]

    opts = [strategy: :one_for_one, name: Jarvis.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
