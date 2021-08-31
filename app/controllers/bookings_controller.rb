class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @flat = Flat.find(params[:flat_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @flat = Flat.find(params[:flat_id])
    @booking.flat = @flat
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def confirm
    @booking = Booking.find(params[:booking_id])
    @booking.confirmed = true
    redirect_to
    #the confirm method needs to change the boolean confirm to true if the user-host
    #clicks the button confirm when he receives a booking request.
  end

  def my_bookings
    @bookings = current_user.bookings
  end

  def booking_params
    params.require(:booking).permit(:check_in, :check_out, :confirmed, :message)
  end
end
