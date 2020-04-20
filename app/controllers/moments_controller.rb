class MomentsController < ApplicationController
  def index
    @moments = Moment.all
  end

  def show
    @moment = Moment.find(params[:id])
  end

  def new
    @event = Event.find(params[:event_id])
    @moment = Moment.new
  end

  def create
    @event = Event.find(params[:event_id])
    @moment = Moment.new(moment_params)
    @moment.event = @event
    if @moment.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def destroy
    @moment = Moment.find(params[:id])
    @moment.destroy
    redirect_to event_path(@moment.event)
  end

  private

  def moment_params
    params.require(:moment).permit(:event_date)
  end
end
