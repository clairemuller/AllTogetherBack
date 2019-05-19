class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render json: User.all
  end

  def create
    @user = User.find_or_create_by(name: params["user"])
    render json: @user
  end

  def destroy
    
  end

end
