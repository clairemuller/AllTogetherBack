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
    # byebug
    # item = Item.find_or_create_by(description: params['description'])
  end

  def getEverything
    user = User.find(params[:id])

    roomsWithLocations = []
    user.rooms.each do |room|
      roomObj = {}
      roomObj['name'] = room.name
      roomObj['id'] = room.id
      roomObj['locations'] = []
      room.locations.each do |location|
        roomObj['locations'].push(location)
      end
      roomsWithLocations.push(roomObj)
    end

    everything = {
      rooms: roomsWithLocations,
      # locations: user.locations,
      categories: user.categories.uniq
    }
    render json: everything
  end

  def getItems
    user = User.find(params[:id])
    render json: user.items
  end

  def getRooms
    user = User.find(params[:id])
    render json: user.rooms
  end

  def addRoom
    user = User.find(params[:id])
    room = Room.find_or_create_by(name: params["room"], property_id: 1)
    render json: room
  end

end
