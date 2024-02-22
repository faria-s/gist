defmodule SalGist.GistsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `SalGist.Gists` context.
  """

  @doc """
  Generate a gist.
  """
  def gist_fixture(attrs \\ %{}) do
    {:ok, gist} =
      attrs
      |> Enum.into(%{
        description: "some description",
        markup_text: "some markup_text",
        name: "some name",
        user_id: "some user_id"
      })
      |> SalGist.Gists.create_gist()

    gist
  end
end
