defmodule BandCatalog.Bands.Band do
  use Ecto.Schema
  import Ecto.Changeset

  schema "bands" do
    field :genre, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(band, attrs) do
    band
    |> cast(attrs, [:name, :genre])
    |> validate_required([:name, :genre])
  end
end
