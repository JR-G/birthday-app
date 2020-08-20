require 'date'
class Countdown
  def initialize(day, month, year=2020)
    @time = Date.today  
    @birthday = Date.new(year,month,day)
   end

  def days_between
    if @time == @birthday
      return 0
    elsif @birthday < @time
      ((@birthday += 365) - @time).to_i
    else
      (@birthday - @time).to_i 
    end 
  end

end