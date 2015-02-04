class EventTrackersController < ApplicationController
  def index
    @event_trackers=EventTracker.all
  end

  def new
    @event_tracker=EventTracker.new
  end

  def create
    EventTracker.create(event_tracker_params)
    redirect_to event_trackers_path
  end

  private

  def event_tracker_params
    params.require(:event_tracker).permit(:date, :description, :requires_ID, :capacity, :directions)
  end

end
