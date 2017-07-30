defmodule Chat.Web.ChatController do
  use Chat.Web, :controller


  def create(conn, %{"user" => user}) do
    redirect conn, to: chat_path(conn, :index, user: user["user"])
  end

  def index(conn, %{"user" => user}) do
    conn
    |> assign(:user, user)
    |> render("index.html")
  end
end
