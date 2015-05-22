ENV["RACK_ENV"] ||= "test"

require_relative "app"

require 'minitest/autorun'
require 'rack/test'

class MyAppTest < Minitest::Test
  include Rack::Test::Methods
  
  def app
   	Sinatra::Application
  end

  def test_root
    get '/'
    assert_equal 200, last_response.status
  end
end