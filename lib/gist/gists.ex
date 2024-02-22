defmodule Gist.Gists do
  @moduledoc """
  The Gists context.
  """

  import Ecto.Query, warn: false
  alias Gist.Repo

  alias Gist.Gists.Gists

  @doc """
  Returns the list of gists.

  ## Examples

      iex> list_gists()
      [%Gists{}, ...]

  """
  def list_gists do
    Repo.all(Gists)
  end

  @doc """
  Gets a single Gists.

  Raises `Ecto.NoResultsError` if the Gist main does not exist.

  ## Examples

      iex> get_Gists!(123)
      %Gists{}

      iex> get_Gists!(456)
      ** (Ecto.NoResultsError)

  """
  def get_Gists!(id), do: Repo.get!(Gists, id)

  @doc """
  Creates a Gists.

  ## Examples

      iex> create_Gists(%{field: value})
      {:ok, %Gists{}}

      iex> create_Gists(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_Gists(attrs \\ %{}) do
    %Gists{}
    |> Gists.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a Gists.

  ## Examples

      iex> update_Gists(Gists, %{field: new_value})
      {:ok, %Gists{}}

      iex> update_Gists(Gists, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_Gists(%Gists{} = Gists, attrs) do
    Gists
    |> Gists.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Gists.

  ## Examples

      iex> delete_Gists(Gists)
      {:ok, %Gists{}}

      iex> delete_Gists(Gists)
      {:error, %Ecto.Changeset{}}

  """
  def delete_Gists(%Gists{} = Gists) do
    Repo.delete(Gists)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking Gists changes.

  ## Examples

      iex> change_Gists(Gists)
      %Ecto.Changeset{data: %Gists{}}

  """
  def change_Gists(%Gists{} = Gists, attrs \\ %{}) do
    Gists.changeset(Gists, attrs)
  end
end
