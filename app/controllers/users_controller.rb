class UsersController < ApplicationController
  def my_flats
    @flats = Flat.where(user: current_user)
    @title = "#{current_user.first_name}'s magical flats"
  end
end

