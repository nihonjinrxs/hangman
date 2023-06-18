import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :browser, BrowserWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "Sy6yNdc9QiVyNRj9n0e97V6Rf/iadNVhLV6ZChGIs0ysay284sOGlbvm2h7914fE",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
