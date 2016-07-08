require 'sinatra'
require './server'
require 'rspec'
require 'rack/test'
require './lib/models/blog'
require './lib/models/post'


describe 'Server service' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  describe 'GET /' do
    it 'returns 200 OK' do
      get '/'
      expect(last_response).to be_ok
    end
  # describe 'GET /new_post'
    it 'returns 200 OK' do
      get ''
      expect(last_response).to be_ok
    end

  #
  #   it 'should '
  end
end
