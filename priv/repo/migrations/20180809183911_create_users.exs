defmodule InnopayRestApi.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :role, :string
      add :pin_hash, :string

      timestamps()
    end

  end
end
