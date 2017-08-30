defmodule DoCode.Repo do
 
 @moduledoc """
 In memory repository.
 """

def all(DoCode.User) do
	[%DoCode.User{id: "1", name: "Jose", username: "josevalim", password: "elixir"},
	%DoCode.User{id: "2", name: "Hani", username: "hanisah", password: "1234"},
	%DoCode.User{id: "3", name: "Izzah", username: "izzahtul", password: "12345"}]
end

def all(_module), do: []

def get(module, id) do
	Enum.find all(module), fn map -> map.id == id end
end

def get_by(module, params) do
	Enum.find all(module), fn map ->
		Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
end


end
end