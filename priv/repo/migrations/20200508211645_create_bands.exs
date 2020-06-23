defmodule BandCatalog.Repo.Migrations.CreateBands do
  use Ecto.Migration

  def change do
    create table(:bands) do
      add :name, :string
      add :genre, :string

      timestamps()
    end

  end
end
