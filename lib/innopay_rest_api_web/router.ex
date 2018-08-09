defmodule InnopayRestApiWeb.Router do
  use InnopayRestApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", InnopayRestApiWeb do
    pipe_through :api
  end
end
