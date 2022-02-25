class DreamsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show,:index]

  before_action :set_dream, only: [:show]
  def index
    # mode_id = params[:id]
    # params[:mode]
    # if params[:query].present?
    #   @dreams = Dream.all.where(mode: params[:mode]).global_search(params[:query])
    # else
    #   @dreams = Dream.all.where(mode: params[:mode])
    # end


    if params[:mode].present?
      dream_search(params)
    else
      @mode = session[:mode]
      dream_search_all(params)
    end
  end

  def show
    @booking = Booking.new
    @markers = [
      {
        lat: @dream.latitude,
        lng: @dream.longitude,
        info_window: render_to_string(partial: "info_window", locals: { dream: @dream })
      }
    ]
  end

  def new
    @dream = Dream.new
  end

  def create
    @dream = Dream.new(dream_params)
    @dream.user = current_user
    if @dream.save
      redirect_to dream_path(@dream)
    else
      render :new
    end
  end

  private

  def dream_params
    params.require(:dream).permit(:title, :description, :photo, :overall_rating, :address, :intensity, :price, :mode_id)
  end

  def set_dream
    @dream = Dream.find(params[:id])
  end

  def dream_search(params)
    @mode = params[:mode]
    session[:mode] = @mode
    if params[:query].present?
      @dreams = Dream.where(mode: params[:mode]).global_search(params[:query])
    else
      @dreams = Dream.where(mode: params[:mode])
    end
  end

  def dream_search_all(params)
    if params[:query].present?
      @dreams = Dream.where(mode: @mode).global_search(params[:query])
    else
      @dreams = Dream.where(mode: @mode)
    end
  end
end
