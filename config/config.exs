# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :jarvis, Jarvis.Robot,
  adapter: Hedwig.Adapters.Slack,
  name: "jarvis",
  aka: "/",
  token: System.get_env("SLACK_API_TOKEN"),
  rooms: [],
  responders: [
    {Hedwig.Responders.Help, []},
    {Hedwig.Responders.GreatSuccess, []},
    {Hedwig.Responders.ShipIt, []}
  ]
