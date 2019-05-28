class LocationsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def destroy
    location = Location.find(params["locationId"])
    location.destroy
    render json: location
  end

end
