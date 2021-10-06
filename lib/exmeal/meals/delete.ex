defmodule Exmeal.Meals.Delete do
  alias Exmeal.Error
  alias Exmeal.Meals.Meal
  alias Exmeal.Repo

  def call(id) do
    case Repo.get(Meal, id) do
      nil -> {:error, Error.build_meal_not_found()}
      meal -> Repo.delete(meal)
    end
  end
end
