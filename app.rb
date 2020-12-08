# include 'sinatra'

# configure do
#   enable :sessions
#   set :session_secret, "secret"
# end

require 'sinatra/base'
# require 'rack'

class Battle < Sinatra::Base
  get '/' do
    'Hello Battle!'
  end

run! if app_file == $0
end
