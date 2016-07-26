class VehiclesController < ApplicationController
  def new
    @vehicle = Vehicle.new
    @user = current_user
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.user_id = current_user.id
    if @vehicle.save
      flash[:succes] = 'Vehicle registered sucessfully'
      redirect_to user_vehicles_path(current_user)
    else
      flash[:error] = @vehicle.errors.full:messages.join(',')
      render 'new'
    end
  end

  def index
    @vehicles = Vehicle.all
    @user = current_user
  end

  def vehicle_params
    params.require(:vehicle).permit(:user_id, :model, :year, :vin, :id)
  end
  private :vehicle_params
end
