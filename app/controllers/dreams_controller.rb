class DreamsController < ApplicationController
  def index
     # mode_id = params[:id]
     #params[:mode]
    @dreams = Dream.all
  end



end
