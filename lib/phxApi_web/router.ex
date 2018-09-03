defmodule PhxApiWeb.Router do
  use PhxApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api/v1", PhxApiWeb do
    pipe_through :api

    resources "/users", UserController, only: [:create, :show]
  end
end
