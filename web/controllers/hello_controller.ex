defmodule HelloPhoenix.HelloController do
  use HelloPhoenix.Web, :controller

  plug :action

  def index(conn, _params) do
    render conn, "index.html"
  end

  def unko(conn, _params) do
    render conn, "show.html", messenger: 'unko' 
  end

  def show(conn, %{"messenger" => messenger }) do
    render conn, "show.html", messenger: messenger
    render conn, "show.html", messenger: messenger
  end
end
