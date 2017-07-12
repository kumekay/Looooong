defmodule Looooong.ExtendView do
  use Looooong.Web, :view

  def render("create.json", %{extended_url: extended_url}) do
    %{extended_url: extended_url}
  end
end
