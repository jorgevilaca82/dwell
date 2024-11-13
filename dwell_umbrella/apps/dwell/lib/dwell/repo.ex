defmodule Dwell.Repo do
  use Ecto.Repo,
    otp_app: :dwell,
    adapter: Ecto.Adapters.Postgres
end
