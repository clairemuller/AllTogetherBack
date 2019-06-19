class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_user, except: [:index, :create]

  def index
    render json: User.all
  end

  def create
    user = User.find_or_create_by(name: params["username"])
    property = Property.find_or_create_by(name: 'home', user_id: user.id)
    # if new user, create example data
    if user.rooms.length == 0
      category1 = Category.create(name: 'books')
      category2 = Category.create(name: 'clothes')
      room = Room.create(name: 'living room', property_id: property.id)
      location1 = Location.create(name: 'bookshelf', room_id: room.id)
      location2 = Location.create(name: 'closet', room_id: room.id)
      item = Item.create(
        description: 'To Kill a Mockingbird (EXAMPLE)',
        location_id: location1.id,
        category_id: category1.id
      )
      item = Item.create(
        description: 'black coat (EXAMPLE)',
        note: 'from J Crew',
        location_id: location2.id,
        category_id: category2.id
      )
    end
    render json: user
  end

  def show
    render json: @user
  end

  def getEverything
    roomsWithLocations = []
    @user.rooms.each do |room|
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
      categories: @user.categories.uniq
    }
    render json: everything
  end

  def getItems
    render json: @user.items
  end

  def getRooms
    render json: @user.rooms
  end

  def addRoom
    property = @user.properties[0]
    room = Room.find_or_create_by(name: params["room"], property_id: property.id)
    if params['locations']
      locations = params['locations']
      locations = locations.split(',')
      locations.each do |ll|
        Location.create(name: ll.strip(), room_id: room.id)
      end
    end
    render json: room
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

end
