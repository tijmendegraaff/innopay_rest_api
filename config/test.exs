use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :innopay_rest_api, InnopayRestApiWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :innopay_rest_api, InnopayRestApi.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "innopay_rest_api_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
