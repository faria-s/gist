defmodule Gist.GistsTest do
  use Gist.DataCase

  alias Gist.Gists

  describe "gists" do
    alias Gist.Gists.Gists

    import Gist.GistsFixtures

    @invalid_attrs %{description: nil, markup_text: nil, name: nil}

    test "list_gists/0 returns all gists" do
      Gists = Gists_fixture()
      assert Gists.list_gists() == [Gists]
    end

    test "get_Gists!/1 returns the Gists with given id" do
      Gists = Gists_fixture()
      assert Gists.get_Gists!(Gists.id) == Gists
    end

    test "create_Gists/1 with valid data creates a Gists" do
      valid_attrs = %{description: "some description", markup_text: "some markup_text", name: "some name"}

      assert {:ok, %Gists{} = Gists} = Gists.create_Gists(valid_attrs)
      assert Gists.description == "some description"
      assert Gists.markup_text == "some markup_text"
      assert Gists.name == "some name"
    end

    test "create_Gists/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Gists.create_Gists(@invalid_attrs)
    end

    test "update_Gists/2 with valid data updates the Gists" do
      Gists = Gists_fixture()
      update_attrs = %{description: "some updated description", markup_text: "some updated markup_text", name: "some updated name"}

      assert {:ok, %Gists{} = Gists} = Gists.update_Gists(Gists, update_attrs)
      assert Gists.description == "some updated description"
      assert Gists.markup_text == "some updated markup_text"
      assert Gists.name == "some updated name"
    end

    test "update_Gists/2 with invalid data returns error changeset" do
      Gists = Gists_fixture()
      assert {:error, %Ecto.Changeset{}} = Gists.update_Gists(Gists, @invalid_attrs)
      assert Gists == Gists.get_Gists!(Gists.id)
    end

    test "delete_Gists/1 deletes the Gists" do
      Gists = Gists_fixture()
      assert {:ok, %Gists{}} = Gists.delete_Gists(Gists)
      assert_raise Ecto.NoResultsError, fn -> Gists.get_Gists!(Gists.id) end
    end

    test "change_Gists/1 returns a Gists changeset" do
      Gists = Gists_fixture()
      assert %Ecto.Changeset{} = Gists.change_Gists(Gists)
    end
  end
end
