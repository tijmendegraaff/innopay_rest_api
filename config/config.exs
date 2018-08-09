# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :innopay_rest_api,
  ecto_repos: [InnopayRestApi.Repo]

# Configures the endpoint
config :innopay_rest_api, InnopayRestApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "u1J8vyQ/pJ0qhsM4175cFCdFVNlr3zRnv6+ZWixP6Irp/pDqkoKN/XBEvzNUAS2i",
  render_errors: [view: InnopayRestApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: InnopayRestApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
