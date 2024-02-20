defmodule Gist.Repo do
  use Ecto.Repo,
    otp_app: :gist,
    adapter: Ecto.Adapters.Postgres
end
