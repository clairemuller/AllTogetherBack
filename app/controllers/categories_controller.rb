class CategoriesController < ApplicationController

  def show
    user = User.find(params[:id])
    categories = user.categories
    render json: categories.uniq
  end

end
