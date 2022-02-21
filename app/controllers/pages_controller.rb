class PagesController < ApplicationController
  def home
    @modes = Mode.all
  end
end
