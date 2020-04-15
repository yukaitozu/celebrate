class LocationsController < ApplicationController
  def new
    @event = Event.find(params[:event_id])
    @location = Location.new
  end

  def create
    @event = Event.find(params[:event_id])
    @location = Location.new(location_params)
    @location.event = @event
    if @location.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to event_path(@location.event)
  end

  private

  def location_params
    params.require(:location).permit(:place)
  end
end
