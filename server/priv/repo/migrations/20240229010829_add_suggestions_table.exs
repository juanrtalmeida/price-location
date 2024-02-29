defmodule Server.Repo.Migrations.AddSuggestionTable do
  use Ecto.Migration

  def change do
    create table(:suggestions) do
      add :positive_votes, :integer
      add :negative_votes, :integer
      add :description, :string
      add :users_id, references(:users, on_delete: :nothing)
      add :item_name, :string
      add :item_price, :decimal
      timestamps()
    end
  end
end
