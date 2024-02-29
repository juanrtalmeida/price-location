defmodule Server.Repo.Migrations.AddItemsTable do
  use Ecto.Migration

  def change do
    create table(:items) do
      add :name, :string
      add :image, :string
      add :code_bar, :string
      add :description, :string

      timestamps()
    end
  end
end
