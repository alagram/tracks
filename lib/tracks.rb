require "tracks/version"
require "tracks/routing"
require "tracks/util"
require "tracks/dependencies"
require "tracks/controller"


module Tracks
  class Application
    def call(env)
      if env['PATH_INFO'] == '/favicon.ico'
        return [404, {'Content-Type' => 'text/html'}, []]
      end

      klass, act = get_controller_and_action(env)
      controller = klass.new(env)

      begin
        text = controller.send(act)
        [200, {'Content-Type' => 'text/html'},
        [text]]
      rescue RuntimeError
        [505, {'Content-Type' => 'text/html'}, ["Something really bad happened!"]]
      end
    end
  end
end
