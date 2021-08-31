class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    # @locations = Flat.all.map do |flat|
    #   flat.location.name
    # end

    @locations = Location.all
  end
end
