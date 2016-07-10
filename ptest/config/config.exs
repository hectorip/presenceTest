# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ptest,
  ecto_repos: [Ptest.Repo]

# Configures the endpoint
config :ptest, Ptest.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/+e+tzpLVr6M/++YwImEvqnS6m+dgPq6Ka7tw/72EsAYMPa5SxguW/zjUeo7Uak8",
  render_errors: [view: Ptest.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Ptest.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
