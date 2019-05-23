class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render json: User.all
  end

  def create
    user = User.find_or_create_by(name: params["username"])
    property = Property.find_or_create_by(name: 'home', user_id: user.id)
    render json: user
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def update
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
    property = user.properties[0]
    room = Room.find_or_create_by(name: params["room"], property_id: property.id)
    if params['locations']
      locations = params['locations']
      locations = locations.split(',')
      locations.each do |ll|
        Location.create(name: ll, room_id: room.id)
      end
    end
    render json: room
  end

end
