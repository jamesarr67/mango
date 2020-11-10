# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :mango,
  ecto_repos: [Mango.Repo]

# Configures the endpoint
config :mango, MangoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "8Kj3ROGndtO6nJtGL7Uzu+qxOa0ppS2IAsmeKWES7icoUiU+Fyh5Vva67TtPVkP5",
  render_errors: [view: MangoWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Mango.PubSub,
  live_view: [signing_salt: "69k/WIZk"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
