use Mix.Config

config :hello_phoenix, HelloPhoenix.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  cache_static_lookup: false,
  watchers: [{Path.expand("node_modules/brunch/bin/brunch"), ["watch"]}],
  live_reload: [
    #url: "ws://localhost:4000",
    patterns: [
      ~r{priv/static/.*(js|css|png|jpeg|jpg|gif)$},
      ~r{web/views/.*(ex)$},
      ~r{web/templates/.*(eex)$}
    ]
  ],
  reloadable_paths: ["web"],
  code_reloader: true

config :hello_phoenix, HelloPhoenix.Endpoint,
  live_reload: [
    #url: "ws://localhost:4000",
    patterns: [
      ~r{priv/static/.*(js|css|png|jpeg|jpg|gif)$},
      ~r{web/views/.*(ex)$},
      ~r{web/templates/.*(eex)$}
    ]
  ]

config :phoenix, :code_reloader, true
config :logger, :console, format: "[$level] $message\n"
config :hello_phoenix, HelloPhoenix.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "hello_phoenix_dev"
