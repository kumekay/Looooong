defmodule Looooong.ExtendController do
  use Looooong.Web, :controller

  alias Looooong.Extend

  def create(conn, params) do
    case params["url"] do
    "test" ->
      conn
      |> put_status(400)
      |> render  "bad.json"
    "bad" ->
      send_resp(conn, 500, "")
    "foo" ->
      send_resp(conn, 200, "")
    _ ->
      extended_url = "http://#{conn.host}:#{conn.port}/#{Base.encode64(params["url"], padding: false)}"
      render conn, "create.json", extended_url: extended_url
    end
  end
end
