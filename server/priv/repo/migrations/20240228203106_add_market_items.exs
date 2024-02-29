defmodule Server.Repo.Migrations.AddMarketItems do
  use Ecto.Migration

  def change do
    create table(:market_items) do
      add :market_id, references(:markets, on_delete: :nothing)
      add :item_id, references(:items, on_delete: :nothing)
      add :price, :decimal
    end
  end
end
