class DreamsController < ApplicationController
  before_action :set_dream, only: [:show]

  def index
    # mode_id = params[:id]
    # params[:mode]
    if params[:mode].present?
      @dreams = Dream.all.where(mode: params[:mode])
    else
      @dreams = Dream.all
    end
  end

  def show
  end

  private

  def dream_params
    params.require(:dream).permit(:title, :description, :photo, :overall_rating, :intensity, :price)
  end

  def set_dream
    @dream = Dream.find(params[:id])
  end
end
