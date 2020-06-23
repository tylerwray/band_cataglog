defmodule BandCatalog.Bands.Tyler do
  use Ecto.Schema
  import Ecto.Changeset

  schema "tylers" do
    field :name, :string
    field :release_date, :naive_datetime
    field :band_id, :id

    timestamps()
  end

  @doc false
  def changeset(tyler, attrs) do
    tyler
    |> cast(attrs, [:name, :release_date])
    |> validate_required([:name, :release_date])
  end
end
