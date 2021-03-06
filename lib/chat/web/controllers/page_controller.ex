defmodule Chat.Web.PageController do
  use Chat.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def chat(conn, %{"user" => user}) do
    conn
    |> assign(:user, user)
    |> render(:chat.html)
  end
end
