use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :brain_stack, BrainStack.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :brain_stack, BrainStack.Repo,
  adapter: Ecto.Adapters.MySQL,
  username: "root",
  password: "system",
  database: "brain_stack",
  hostname: "localhost",
  port: 3316,
  pool: Ecto.Adapters.SQL.Sandbox

config :brain_stack, BrainStack.ElasticSearch,
  hostname: "localhost",
  port: 9201
