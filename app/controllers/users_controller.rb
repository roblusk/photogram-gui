class UsersController < ApplicationController
  def home
    redirect_to("/users")
  end

  def index
    @list_of_users = User.all
    render({ :template => "user_templates/index" })
  end

  def show
    username = params.fetch("username")
    @user = User.where({ :username => username }).at(0)

    render({ :template => "user_templates/show" })
  end

  def create
    u = User.new
    u.username = params.fetch("username_input")
    u.save

    redirect_to("/users/#{u.username}")
  end

  def update
    username = params.fetch("username")
    u = User.where({ :username => username }).at(0)
    u.username = params.fetch("username_input")
    u.save

    redirect_to("/users/#{u.username}")
  end
end
