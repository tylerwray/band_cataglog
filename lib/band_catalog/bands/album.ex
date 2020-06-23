defmodule BandCatalog.Bands.Album do
  use Ecto.Schema
  import Ecto.Changeset

  schema "albums" do
    field :name, :string
    field :release_date, :naive_datetime

    timestamps()
  end

  @doc false
  def changeset(album, attrs) do
    album
    |> cast(attrs, [:name, :release_date])
    |> validate_required([:name, :release_date])
  end
end
