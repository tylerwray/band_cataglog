defmodule BandCatalog.Repo.Migrations.CreateBandFans do
  use Ecto.Migration

  def change do
    create table(:band_fans) do
      add :fan_id, references(:fans, on_delete: :nothing)
      add :band_id, references(:bands, on_delete: :nothing)

      timestamps()
    end

    create index(:band_fans, [:fan_id])
    create index(:band_fans, [:band_id])
  end
end
