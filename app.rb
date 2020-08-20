require 'sinatra/base'
require 'lib/countdown'

class BirthdayApp < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/countdown' do
    @name = params[:name]
    @day = params[:day]
    @month = params[:month]
    erb :countdown
  end
end