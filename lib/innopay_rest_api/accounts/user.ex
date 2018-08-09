defmodule InnopayRestApi.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  import Comeonin.Bcrypt, only: [hashpwsalt: 1]


  schema "users" do
    field :name, :string
    field :pin_hash, :string
    field :role, :string
    # Virtual fields
    field :pin, :string, virtual: true
    field :pin_confirmation, :string, virtual: true

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :role, :pin, :pin_confirmation])
    |> validate_required([:name, :role, :pin, :pin_confirmation])
    |> validate_length(:pin, min: 5)
    |> validate_confirmation(:pin)
    |> put_pin_hash
  end

  defp put_pin_hash(changeset) do
    case changeset do
      %Ecto.Changeset{valid?: true, changes: %{pin: pass}}
        ->
          put_change(changeset, :pin_hash, hashpwsalt(pass))
      _ ->
          changeset
    end
  end
end
