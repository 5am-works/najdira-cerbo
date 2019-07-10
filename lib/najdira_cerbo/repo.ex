defmodule NajdiraCerbo.Repo do
  use Ecto.Repo,
    otp_app: :najdira_cerbo,
    adapter: Ecto.Adapters.Postgres
end
