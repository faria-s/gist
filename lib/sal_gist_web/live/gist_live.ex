defmodule SalGistWeb.GistLive do
  use SalGistWeb, :live_view

  alias SalGist.Gists

  def mount(%{"id" => id}, _session, socket) do
    gist = Gists.get_gist!(id)
    {:ok, assign(socket, gist: gist)}
  end
end