class DreamsController < ApplicationController
  before_action :set_dream, only: [:show]
  def index
    # mode_id = params[:id]
    # params[:mode]
    @mode = params[:mode]
    if params[:mode].present?
      @dreams = Dream.all.where(mode: params[:mode])
    else
      @dreams = Dream.all
    end
  end

  def show
  end

  def new
    @mode = Mode.find(params[:mode_id])
    @dream = Dream.new
  end

  def create
    @mode = Mode.find(params[:mode_id])
    @dream = Dream.new(dream_params)
    @dream.mode = @mode
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
