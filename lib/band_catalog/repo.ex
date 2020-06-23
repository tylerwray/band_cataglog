defmodule BandCatalog.Repo do
  use Ecto.Repo,
    otp_app: :band_catalog,
    adapter: Ecto.Adapters.Postgres
end
