class ItemsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    user = User.find(params[:id])
    category = Category.find_or_create_by(name: params['category'])
    property = user.properties[0]
    room = Room.find_by(name: params['room'], property_id: property.id)
    location = Location.find_by(name: params['location'], room_id: room.id)
    item = Item.create(
      description: params['description'],
      note: params['note'],
      location_id: location.id,
      category_id: category.id
    )
    render json: item
  end

end
