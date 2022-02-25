class BookingsController < ApplicationController
  def new
    @dream = Dream.find(params[:dream_id])
    @booking = Booking.new
  end

  def create
    @dream = Dream.find(params[:dream_id])
    @booking = Booking.new(booking_params)
    parse_dates(params[:booking][:starting_date])
    @booking.dream = @dream
    @booking.user = current_user
    if @booking.save
      redirect_to dream_path(@dream), notice: "You booking was created!"
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starting_date)
  end

  def parse_dates(dates)
    @booking.starting_date = Date.parse(dates.split[0])
    @booking.ending_date = Date.parse(dates.split[2])
  end
end
