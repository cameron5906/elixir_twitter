use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :elixir_twitter, ElixirTwitterWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :elixir_twitter, ElixirTwitter.Repo,
  username: "postgres",
  password: "postgres",
  database: "elixir_twitter_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
