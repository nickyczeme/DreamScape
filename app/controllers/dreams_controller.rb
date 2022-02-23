class DreamsController < ApplicationController
  before_action :set_dream, only: [:show]
  def index
    # mode_id = params[:id]
    # params[:mode]
    if params[:mode].present?
      @mode = params[:mode]
      @dreams = Dream.all.where(mode: params[:mode])
      session[:mode] = @mode
    else
      @mode = session[:mode]
      @dreams = Dream.all
    end
  end

  def show

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
    params.require(:dream).permit(:title, :description, :photo, :overall_rating, :intensity, :price, :mode_id)
  end
  def set_dream
    @dream = Dream.find(params[:id])
  end
end
