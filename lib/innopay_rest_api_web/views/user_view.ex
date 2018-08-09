defmodule InnopayRestApiWeb.UserView do
  use InnopayRestApiWeb, :view
  alias InnopayRestApiWeb.UserView

  def render("index.json", %{users: users}) do
    %{data: render_many(users, UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      name: user.name,
      role: user.role,
      pin_hash: user.pin_hash}
  end
end
