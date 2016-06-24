require './server'
require 'rspec'
require 'rack/test'

describe 'Server service' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  describe 'GET /' do
    it 'returns 200 OK' do
      get '/'
      # expect(last_response.status).to eq(200)
      expect(last_response).to be_ok
    end
    it "includes 'I'm home'" do
      get '/'
      expect(last_response.body).to include("I'm home")
    end
  end

  describe 'GET /home' do
    it 'redirects to /' do
      get '/home'

      # expect(Calculator).to receive(:add).with(1,2).and_return(3)
      # just a sample

      expect(last_response).to be_redirect
      # expect(last_response.redirect?).to eq(true)

      follow_redirect!
      expect(last_request.path).to eq('/')

    end
  end
end
