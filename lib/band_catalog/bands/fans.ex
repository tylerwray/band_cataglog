defmodule BandCatalog.Bands.Fans do
  use Ecto.Schema
  import Ecto.Changeset

  schema "fans" do
    field :name, :string

    
    timestamps()
  end

  @doc false
  def changeset(fans, attrs) do
    fans
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
