defmodule BrainStack.ItemController do
  use BrainStack.Web, :controller
  alias BrainStack.ElasticSearch
  alias BrainStack.ElasticSearch.Query
  alias BrainStack.Item

  # def new(conn, %{"title" => title, "text" => text} = params) do
    # item = Item.new(title, text)
    # {:ok, 200, _} = Query.insert(item)
    # render(conn, "top.html")
  # end

  def new(conn, %{"text" => text} = params) do
    title = "test"
    item = Item.new(title, text)
    {:ok, 200, _} = Query.insert(item)
    render(conn, "top.html")
  end

  def show(conn, params) do

  end
end
