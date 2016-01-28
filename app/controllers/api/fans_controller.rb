class Api::FansController < ApplicationController
  def index
    fans = Fan.all
    render json: {fans: fans}
end
