class FlatsController < ApplicationController
  def index
    if params[:location_id] == "Where in the Wizarding world would you like to go?"|| params[:location_id].nil?
      @flats = Flat.all
      @title = "Explore all the magical flats in the Wizarding world"
    else
      location = Location.find(params[:location_id])
      @flats = Flat.where(location: location)
      @title = "Explore all the magical flats in #{location.name}"
      # @flats = Flat.where(user: current_user)
      # @title = "#{current_user.first_name}'s magical flats"
    end
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user = current_user
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    @flat = Flat.find(params[:id])
    if @flat.update(flat_params)
      redirect_to flat_path(@flat)
    else
      render :edit
    end
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flat_path
  end

  private

  def flat_params
    params.require(:flat).permit(:title, :description, :price, :location_id, photos: [])
  end
end
