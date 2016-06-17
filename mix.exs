defmodule Jarvis.Mixfile do
  use Mix.Project

  def project do
    [
      app: :jarvis,
      version: "0.0.1",
      elixir: "~> 1.2",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps
    ]
  end

  def application do
    [
      applications: [
        :hedwig_mopidy,
        :hedwig_slack,
        :logger
      ],
      mod: {Jarvis, []}
    ]
  end

  defp deps do
    [
      {:hedwig_slack, "~> 0.1"},
      {:hedwig_mopidy, github: "trestrantham/hedwig_mopidy", override: true},
      {:mopidy, github: "trestrantham/mopidy", override: true},
      {:poison, "~> 2.1"}
    ]
  end
end
