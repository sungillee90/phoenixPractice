defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  def index(conn, _params) do
    conn
    |> put_flash(:info, "Welcome BACK")
#    |> put_flash(:error, "Welcome BACK") TURNS the message "red color" so it looks like an error
    |> render("index.html")
    #    render conn, "index.html"
  end

  def show(conn, %{"messenger" => messenger}) do
    render conn, "show.html", messenger: messenger
  end

end