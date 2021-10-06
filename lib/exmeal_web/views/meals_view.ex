defmodule ExmealWeb.MealsView do
  use ExmealWeb, :view

  alias Exmeal.Meals.Meal

  def render("create.json", %{meal: %Meal{} = meal}) do
    %{
      meal: %{meal: meal},
      message: "Meal created!"
    }
  end

  def render("meal.json", %{meal: %Meal{} = meal}), do: %{meal: meal}
end
