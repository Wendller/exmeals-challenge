defmodule Exmeal.Meals.Get do
  alias Exmeal.Error
  alias Exmeal.Meals.Meal
  alias Exmeal.Repo

  def by_id(id) do
    case Repo.get(Meal, id) do
      nil -> {:error, Error.build_meal_not_found()}
      meal -> {:ok, meal}
    end
  end
end
