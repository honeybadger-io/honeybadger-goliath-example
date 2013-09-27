require 'goliath'
require 'honeybadger'

Honeybadger.configure do |config|
  config.api_key = ENV['HONEYBADGER_API_KEY']
  config.environment_name = Goliath.env
end

class David < Goliath::API
  use Honeybadger::Rack
  def response(env)
    [200, {}, sling.release.stones]
  end
end
