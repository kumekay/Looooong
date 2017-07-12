defmodule Looooong.PageController do
  use Looooong.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def short(conn, params) do
    redirect conn, external: Base.decode64(params["extended_url"])
  end
end
