defmodule Server.Repo.Migrations.AddMarketsTable do
  use Ecto.Migration

  def change do
    create table(:markets) do
      add :name, :string
      add :location, :string
      add :address, :string
      add :image, :string
      add :description, :string
      timestamps()
    end
  end
end
