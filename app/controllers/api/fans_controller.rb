class Api::FansController < ApplicationController
  def index
    fans = Fan.all
    render json: {fans:fans}
  end

  def create
    new_fan = Fan.create( fan_params )
    render json: new_fan
  end

  private
  def fan_params
    params.require(:fan).permit(:name, :age, :city, :state, :country, :email)
  end

end
