module DealsHelper
  def format_time_interval(seconds)
    if seconds > 1.hour
      Time.at(seconds).gmtime.strftime('%R:%S')
    else
      Time.at(seconds).gmtime.strftime('%M:%S')
    end
  end
end
