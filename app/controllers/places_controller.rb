class PlacesController < ApplicationController
  
  def index
    @pagy, @places = pagy(Place.all, items: 5)
  end
end
