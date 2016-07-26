class LocationsController < AplicationController
  def index
    @locations = Location.all
    flash[:error] = 'No locations registered.' if @locations.empty?
  end
end
