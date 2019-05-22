class ItemsController < ApplicationController

  def create
    user = User.find(params[:id])
    byebug
    # Item.create(description: params['description'], location: params['location'])
  end

end
