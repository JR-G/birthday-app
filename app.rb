require 'sinatra/base'
require './lib/countdown'

class BirthdayApp < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/countdown' do
    @name = params[:name]
    @day = params[:day]
    @month = params[:month]
    birthday = Countdown.new(@day.to_i, @month.to_i)
    @count = birthday.days_between
    erb :countdown
  end
end