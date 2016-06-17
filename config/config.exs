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
    {Hedwig.Responders.ShipIt, []},
    {HedwigMopidy.Responders.Playback, []}
  ]

config :mopidy,
  api_url: System.get_env("MOPIDY_API_URL")
