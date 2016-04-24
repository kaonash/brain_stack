defmodule BrainStack.ItemView do
  use BrainStack.Web, :view

  def render("new.json", %{item: item}) do
    "itemJson"
  end
end
