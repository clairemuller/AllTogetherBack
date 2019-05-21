class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render json: User.all
  end

  def create
    user = User.find_or_create_by(name: params["username"])
    render json: user
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def update
    byebug
    # @item = Item.find_or_create_by(description: params['description'])
  end

  def getEverything
    user = User.find(params[:id])
    everything = {
      locations: user.locations,
      rooms: user.rooms,
      categories: user.categories.uniq
    }
    render json: everything
  end

end
