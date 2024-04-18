class UsersController < ApplicationController
  def home
    redirect_to("/users")
  end

  def index
    @list_of_users = User.all
    render({ :template => "user_templates/index" })
  end

  def show
    user_id = params.fetch("user_id")
    @user = User.find(user_id)

    render({ :template => "user_templates/show" })
  end

  def create
    u = User.new
    u.username = params.fetch("username_input")
    u.save

    redirect_to("/users/#{u.id}")
  end
end
