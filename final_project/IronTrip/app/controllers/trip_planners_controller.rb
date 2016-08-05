class TripPlannersController < ApplicationController
  before_action :initialize_session_cart

  def initialize_session_cart
    session[:cart] ||= ActiveSupport::HashWithIndifferentAccess.new
    session[:cart]['venues'] ||= []
    session[:cart]['events'] ||= []
    session[:cart][:schedule] ||= {}
    session[:cart][:schedule]['venue'] ||= {}
    session[:cart][:schedule]['event'] ||= {}
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

    if @trip.save
      session[:cart][:schedule]['venue'].each do |key, value|
        Schedule.create(trip_planner_id: @trip.id, venue_id: key, day: value['day'], time: value['time'])
      end
      session[:cart][:schedule]['event'].each do |key, value|
        Schedule.create(trip_planner_id: @trip.id, event_id: key, day: value['day'], time: value['time'])
      end
      session[:cart][:schedule]['venue'] = {}
      session[:cart][:schedule]['event'] = {}
      session[:cart] = ActiveSupport::HashWithIndifferentAccess.new
      session[:cart]['venues'] = []
      session[:cart]['events'] = []
      redirect_to @trip
    else
      render 'new'
    end
  end

  def show
    if session[:city] != params[:city]
      session[:city] = params[:city]
      venues = RestClient.get 'https://api.foursquare.com/v2/venues/explore?near=' + params[:city] + '&limit=20&client_id=HKRLGM2CST1LW4BA41XANSRU5PHQH1BN3OMAHKEUDIUXGRJ5&client_secret=XJ2E1RJDNXXH3YAXRCOH30V4EO5BYLEVZZH20HMGC3NQ302K&v=20160804'
      json = JSON.parse(venues.body)
      if json['response']['groups'][0]['items'].any?
        json['response']['groups'][0]['items'].each do |venue|
          v = Venue.find_or_initialize_by(api_id: venue['venue']['id'])
          v.update_attributes(name: venue['venue']['name'],
          address: venue['venue']['location']['address'],
          category: venue['venue']['categories'][0]['name'],
          city: venue['venue']['location']['city'].downcase,
          api_id: venue['venue']['id'],
          image: venue['tips'].first['photourl'] || 'venue_avatar.png')
        end
      end
      events = RestClient.get 'http://api.eventful.com/json/events/search?app_key=DTvpFhpWPB3xrVQK&image_sizes=large,block200&sort_order=popularity&page_size=20&location=' + params[:city]
      json = JSON.parse(events.body)
      if json['events']['event'].any?
        json['events']['event'].each do |event|
          e = Event.find_or_initialize_by(api_id: event['id'])
          if event['image'] != nil
            e.update_attributes(title: event['title'], location: event['venue_name'],
            date: event['start_time'], city_name: event['city_name'].downcase,
            location: event['venue_name'], date: event['start_time'],
            image: event['image']['large']['url'])
          else
            e.update_attributes(title: event['title'], location: event['venue_name'],
            date: event['start_time'], city_name: event['city_name'].downcase,
            location: event['venue_name'], date: event['start_time'],
            image: 'event_avatar.png')
          end
        end
      end
    end

    @venues = Venue.where(city: params[:city].downcase)
    @events = Event.where(city_name: params[:city].downcase)
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
  end

  def itenarary
  end

  def add_schedule
    session[:cart][:schedule][params[:type]][params[:id]] = {day: params[:day], time: params[:time]}
  end

end
