defmodule Server.Repo.Migrations.AddShoppingItemsTable do
  use Ecto.Migration

  def change do
    create table(:shopping_items) do
      add :shopping_lists_id, references(:shopping_lists, on_delete: :nothing)
      add :items_id, references(:items, on_delete: :nothing)
      add :amount, :integer
    end
  end
end
