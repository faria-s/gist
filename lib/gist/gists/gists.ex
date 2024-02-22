defmodule Gist.Gists.Gists do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "gists" do
    field :description, :string
    field :markup_text, :string
    field :name, :string
    field :user_id, :binary_id

    timestamps()
  end

  @doc false
  def changeset(Gists, attrs) do
    Gists
    |> cast(attrs, [:name, :description, :markup_text])
    |> validate_required([:name, :description, :markup_text])
  end
end
