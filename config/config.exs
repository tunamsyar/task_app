# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :task_app,
  ecto_repos: [TaskApp.Repo]

config :task_app, :pow,
  user: TaskApp.Users.User,
  repo: TaskApp.Repo

# Configures the endpoint
config :task_app, TaskAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "sZBBo3H/Uq/nPuzCHEQQJgP5CCwu44TnZ9V4IeJ18RNA6O+O3gWFXAbE1J4c+4I0",
  render_errors: [view: TaskAppWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: TaskApp.PubSub,
  live_view: [signing_salt: "C5RQq1U3"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
