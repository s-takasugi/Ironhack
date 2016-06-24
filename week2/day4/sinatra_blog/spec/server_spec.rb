require './server'
require 'rspec'
require 'rack/test'

describe 'Server service' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end
end
