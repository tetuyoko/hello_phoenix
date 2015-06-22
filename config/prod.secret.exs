use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :hello_phoenix, HelloPhoenix.Endpoint,
  secret_key_base: "tztwT9R8ZUNvFXWKnn1d8yHBWW0emKiX1V37vD8eLGBqbW8/5XMnC+6YuYqP2nTX"

# Configure your database
config :hello_phoenix, HelloPhoenix.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "hello_phoenix_prod"
