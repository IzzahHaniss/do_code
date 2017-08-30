defmodule DoCode.Web.UserView do
	use DoCode.Web, :view
	alias DoCode.User

	def first_name(%User{name: name}) do
		name
		|> String.split(" ")
		|> Enum.at(0)
	end

	def username(%User{username: username}) do
		username
		|> String.split(" ")
		|> Enum.at(0)
	end


end