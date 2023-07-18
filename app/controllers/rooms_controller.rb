class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
    @booking = Booking.new
  end

  private

  def room_params
    params.require(:room).permit(:room_number, :description, :capacity, :availability, :price_per_night)
  end
end
