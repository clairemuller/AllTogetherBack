class RoomsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_user

  def show
    rooms = @user.rooms
    roomsWithLocations = []
    rooms.each do |room|
      roomObj = {}
      roomObj['id'] = room.id
      roomObj['name'] = room.name
      roomObj['locations'] = []
      room.locations.each do |location|
        roomObj['locations'].push(location)
      end
      roomsWithLocations.push(roomObj)
    end
    render json: roomsWithLocations
  end

  def destroy
    room = Room.find(params['room'][:id])
    room.destroy
    render json: room
  end

  def update
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

end
