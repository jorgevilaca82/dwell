defmodule Dwell.Repo do
  use Ecto.Repo,
    otp_app: :gh_dwell,
    adapter: Ecto.Adapters.Postgres
end
