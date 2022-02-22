class DreamsController < ApplicationController
  def index
    # mode_id = params[:id]
    # params[:mode]
    if params[:mode].present?
      @dreams = Dream.all.where(mode: params[:mode])
    else
      @dreams = Dream.all
    end
  end

  private

  def dream_params
    params.require(:dream).permit(:title, :description, :photo, :overall_rating, :intensity, :price)
  end
end
