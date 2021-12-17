class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.car = Car.find(params[:car_id])
    @booking.accepted = true
    # raise
    if @booking.save
      redirect_to car_path(params[:car_id]), notice: "Your booking is completed !"
    else
      redirect_to cars_path
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at, :car_id)
  end
end
