require_relative "test_helper"

class TestApp < Tracks::Application
end

class TracksAppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    TestApp.new
  end

  def test_request
    get "/"

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
