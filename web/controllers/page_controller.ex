defmodule BrainStack.PageController do
  use BrainStack.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
