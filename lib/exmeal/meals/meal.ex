defmodule Exmeal.Meals.Meal do
  use Ecto.Schema

  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}

  @required_params [:description, :calories, :date]

  @derive {Jason.Encoder, only: [:id, :description, :calories, :date]}

  schema "meals" do
    field(:description, :string)
    field(:date, :date)
    field(:calories, :integer)

    timestamps()
  end

  def changeset(meal \\ %__MODULE__{}, params) do
    meal
    |> cast(params, @required_params)
    |> validate_required(@required_params)
  end
end
