defmodule BandCatalog.Bands.BandFan do
  use Ecto.Schema
  import Ecto.Changeset

  schema "band_fans" do
    field :fan_id, :id
    field :band_id, :id

    timestamps()
  end

  @doc false
  def changeset(band_fan, attrs) do
    band_fan
    |> cast(attrs, [])
    |> validate_required([])
  end
end
