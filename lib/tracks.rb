require "tracks/version"

module Tracks
  class Application
    def call(env)
      [200, { 'Content-Type' => 'text/html' },
        ["Hello from Ruby on Tracks!"]]
    end
  end
end
