defmodule ElixirTwitterWeb.PageController do
  use ElixirTwitterWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
