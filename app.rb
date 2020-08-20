require 'sinatra/base'

class BirthdayApp < Sinatra::Base
  get '/' do
    erb :index
  end
end