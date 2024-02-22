defmodule Gist.GistsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Gist.Gists` context.
  """

  @doc """
  Generate a Gists.
  """
  def Gists_fixture(attrs \\ %{}) do
    {:ok, Gists} =
      attrs
      |> Enum.into(%{
        description: "some description",
        markup_text: "some markup_text",
        name: "some name"
      })
      |> Gist.Gists.create_Gists()

    Gists
  end
end
