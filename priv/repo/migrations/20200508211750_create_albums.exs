defmodule BandCatalog.Repo.Migrations.CreateAlbums do
  use Ecto.Migration

  def change do
    create table(:albums) do
      add :name, :string
      add :release_date, :naive_datetime

      timestamps()
    end

  end
end
