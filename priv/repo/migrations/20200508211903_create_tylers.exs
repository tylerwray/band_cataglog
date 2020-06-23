defmodule BandCatalog.Repo.Migrations.CreateTylers do
  use Ecto.Migration

  def change do
    create table(:tylers) do
      add :name, :string
      add :release_date, :naive_datetime
      add :band_id, references(:bands, on_delete: :nothing)

      timestamps()
    end

    create index(:tylers, [:band_id])
  end
end
