class TripPlannersController < ApplicationController
  before_action :initialize_session_cart

  def initialize_session_cart
    session[:cart] ||= ActiveSupport::HashWithIndifferentAccess.new
    session[:cart]['venues'] ||= []
    session[:cart]['events'] ||= []
  end

  def home
  end

  def create

    date = "#{params["start_date(1i)"]}/#{params["start_date(2i)"]}/#{params["start_date(3i)"]}"
    @trip = TripPlanner.new(start_date: date)
    @venues = Venue.where(id: session[:cart]['venues'])
    @events = Event.where(id: session[:cart]['events'])
    @trip.venues = @venues
    @trip.events = @events

    # @itenarary = Schedule.new(day: integer, time: integer)

    if @trip.save
      session[:cart] = ActiveSupport::HashWithIndifferentAccess.new
      session[:cart]['venues'] = []
      session[:cart]['events'] = []
      redirect_to @trip
    else
      render 'new'
    end
  end

  def show
    @venues = Venue.all
    @events = Event.all
  end

  def new
    @trip = TripPlanner.new
    @venues = Venue.where(id: session[:cart]['venues'])
    @events = Event.where(id: session[:cart]['events'])
  end

  def add_venue
    session[:cart]['venues'].push(params[:venue_id]) unless session[:cart]['venues'].include?(params[:venue_id])
    redirect_to :back
  end

  def remove_venue
    session[:cart]['venues'].delete(params[:venue_id])
    redirect_to :back
  end

  def add_event
    session[:cart]['events'].push(params[:event_id]) unless session[:cart]['events'].include?(params[:event_id])
    redirect_to :back
  end

  def remove_event
    session[:cart]['events'].delete(params[:evet_id])
    redirect_to :back
    # ToDo redirect_to :back (tab: "active")?
  end

  def itenarary
  end

  def add_schedule
    session[:cart][:schedule][:venues][params[:id]] = {day: params[:day], time: params[:time]}
  end

  # def remove_schedule
  #   session[:cart][:schedule]
  # end

end

# def
#   @trip_planner = TripPlanner.find_by(id: params[:id])
# end
