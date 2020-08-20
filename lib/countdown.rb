class Countdown
  def initialize(day, month, year='2020')
    @day = day
    @month = month
    @year = year

    time = Time.new
    @current_day = time.day
    @current_month = time.month
    @current_year = time.year

    p time.strftime("%d/%m/%Y")


  end
end