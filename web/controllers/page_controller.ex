defmodule Looooong.PageController do
  use Looooong.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
