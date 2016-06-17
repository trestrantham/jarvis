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
      {:hedwig_mopidy, git: "git@github.com:trestrantham/hedwig_mopidy.git"},
      {:mopidy, git: "git@github.com:trestrantham/mopidy.git"},
      {:poison, "~> 2.1"}
    ]
  end
end
