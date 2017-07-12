defmodule Looooong.PageController do
  use Looooong.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def short(conn, params) do
    {:ok, url} = Base.decode64(params["extended_url"])
    redirect conn, external: url
  end
end
