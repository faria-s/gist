defmodule SalGist.Repo.Migrations.CreateComents do
  use Ecto.Migration

  def change do
    create table(:coments, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :markup_text, :text
      add :user_id, references(:users, on_delete: :nothing, type: :binary_id)
      add :gist_id, references(:gists, on_delete: :nothing, type: :binary_id)

      timestamps()
    end

    create index(:coments, [:user_id])
    create index(:coments, [:gist_id])
  end
end
