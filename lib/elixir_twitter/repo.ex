defmodule ElixirTwitter.Repo do
  use Ecto.Repo,
    otp_app: :elixir_twitter,
    adapter: Ecto.Adapters.Postgres
end
