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
    # @item = Item.find_or_create_by(description: params['description'])
  end

  def getEverything
    user = User.find(params[:id])
    everything = {
      rooms: user.rooms,
      locations: user.locations,
      categories: user.categories.uniq
    }
    render json: everything
  end

  def getItems
    user = User.find(params[:id])
    render json: user.items
  end

  def addItem
    user = User.find(params[:id])
    byebug
    # Item.create(description: params['description'], location: params['location'])
  end

  def addRoom
    user = User.find(params[:id])
    room = Room.find_or_create_by(name: params["room"], property_id: 1)
    render json: room
  end

end
