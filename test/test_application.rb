require_relative "test_helper"

class TestController < Tracks::Controller
  def index
    "Hello"
  end
end

class TestApp < Tracks::Application
  def get_controller_and_action(env)
    [TestController, "index"]
  end
end

class TracksAppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    TestApp.new
  end

  def test_request
    get "/example/route"

    assert last_response.ok?
    body = last_response.body
    assert body["Hello"]
  end

  def test_content_type
    get "/"

    assert last_response.ok?
    content_type = last_response['Content-Type']
    assert content_type["text/html"]
  end
end
