defmodule Server.Repo.Migrations.AddShoppingListsTable do
  use Ecto.Migration

  def change do
    create table(:shopping_lists) do
      add :name, :string
      add :description, :string
      add :user_id, references(:users, on_delete: :nothing)

      timestamps()
    end
  end
end
