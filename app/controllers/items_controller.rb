class ItemsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_user

  def create
    category = Category.find_or_create_by(name: params['category'])
    property = @user.properties[0]
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

  def update
    category = Category.find_or_create_by(name: params['category'])
    property = @user.properties[0]
    room = Room.find_by(name: params['room'], property_id: property.id)
    location = Location.find_by(name: params['location'], room_id: room.id)
    item = Item.find(params['item'][:id])
    item.update(
      description: params['description'],
      note: params['note'],
      location_id: location.id,
      category_id: category.id
    )
    render json: item
  end

  def destroy
    item = Item.find(params['item'][:id])
    item.destroy
    render json: item
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

end
