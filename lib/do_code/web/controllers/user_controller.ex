defmodule DoCode.Web.UserController do
  use DoCode.Web, :controller

  alias DoCode.Repo

  def index(conn, _params) do
  	users = Repo.all(DoCode.User)
  	render conn, "index.html", users: users
  end

 end