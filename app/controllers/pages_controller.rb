class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @modes = Mode.all
  end
end
