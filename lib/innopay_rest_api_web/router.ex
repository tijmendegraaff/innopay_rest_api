defmodule InnopayRestApiWeb.Router do
  use InnopayRestApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api/v1", InnopayRestApiWeb do
    pipe_through :api

    resources "/users", UserController, only: [:create, :show]
  end
end
