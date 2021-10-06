defmodule Exmeal.Meals.Update do
  alias Exmeal.Error
  alias Exmeal.Meals.Meal
  alias Exmeal.Repo

  def call(%{"id" => id} = params) do
    case Repo.get(Meal, id) do
      nil -> {:error, Error.build_meal_not_found()}
      meal -> update_meal(meal, params)
    end
  end

  defp update_meal(meal, params) do
    meal
    |> Meal.changeset(params)
    |> Repo.update()
  end
end
