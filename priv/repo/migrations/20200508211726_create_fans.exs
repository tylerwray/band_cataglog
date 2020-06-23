defmodule BandCatalog.Repo.Migrations.CreateFans do
  use Ecto.Migration

  def change do
    create table(:fans) do
      add :name, :string

      timestamps()
    end

  end
end
