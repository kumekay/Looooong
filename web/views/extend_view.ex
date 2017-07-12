defmodule Looooong.ExtendView do
  use Looooong.Web, :view

  def render("create.json", %{extended_url: extended_url}) do
    %{extended_url: extended_url}
  end

  def render("bad.json", _) do
    %{bada: :boom}
  end
end
