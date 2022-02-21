class DreamsController < ApplicationController
  def index
     # mode_id = params[:id]
     #params[:mode]
     if params[:mode].present?
      @dreams = Dream.where(mode: params[:mode])
     else
      @dreams = Dream.all
     end
  end
end
