class BookingsController < ApplicationController
  def new
    @dream = Dream.find(params[:dream_id])
    @booking = Booking.new
  end

  def create
    @dream = Dream.find(params[:dream_id])
    @booking = Booking.new(booking_params)
    @booking.dream = @dream
    @booking.user = current_user
    if @booking.save
      redirect_to dream_path(@dream)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starting_date, :ending_date)
  end
end
