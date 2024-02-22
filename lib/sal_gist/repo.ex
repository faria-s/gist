defmodule SalGist.Repo do
  use Ecto.Repo,
    otp_app: :sal_gist,
    adapter: Ecto.Adapters.Postgres
end
