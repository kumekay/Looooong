defmodule Looooong.ExtendController do
  use Looooong.Web, :controller

  alias Looooong.Extend

  def create(conn, params) do
    extended_url = "http://#{conn.host}:#{conn.port}/#{Base.encode64(params["url"], padding: false)}"
    render conn, "create.json", extended_url: extended_url
  end
end
