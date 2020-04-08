class GuestsController < ApplicationController
  def show
    @guest = Guest.find(params[:id])
  end

  def new
    @event = Event.find(params[:event_id])
    @guest = Guest.new
  end

  def create
    @event = Event.find(params[:event_id])
    @guest = Guest.new(guest_params)
    @guest.event = @event
    if @guest.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  private

  def guest_params
    params.require(:guest).permit(:name)
  end
end
