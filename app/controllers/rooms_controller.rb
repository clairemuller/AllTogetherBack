class RoomsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def show
    user = User.find(params[:id])
    rooms = user.rooms
    roomsWithLocations = []

    rooms.each do |room|
      roomObj = {}
      roomObj[room.name] = []
      room.locations.each do |location|
        roomObj[room.name].push(location)
      end
      roomsWithLocations.push(roomObj)
    end

    render json: roomsWithLocations
  end

end
