import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :tetris_gui, TetrisGuiWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "SUFJf7R7HTUTBwEh1vprFmVG+aR0jA2WL7GT4onL4RPE7eTkt/jmcha4YkRzUXkn",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
