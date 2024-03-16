defmodule SalGistWeb.PageController do
  use SalGistWeb, :controller

  def home(conn,_params) do
    redirect(conn, to: "/create")
  end
end
