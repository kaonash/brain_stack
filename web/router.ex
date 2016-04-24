defmodule BrainStack.Router do
  use BrainStack.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", BrainStack do
    pipe_through :browser # Use the default browser stack

    resources "items", ItemController, only: [:new, :show]
  end

  scope "/api", BrainStack do
    pipe_through :api

    resources "items", ItemController, only: [:new]
  end

  # Other scopes may use custom stacks.
  # scope "/api", BrainStack do
  #   pipe_through :api
  # end
end
