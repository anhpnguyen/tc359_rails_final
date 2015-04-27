module StoriesHelper
  def current_date_and_time
    # See how to use it at: http://apidock.com/ruby/Time/strftime
    Time.now.strftime("%B %-d, %Y at %l:%M %P")
  end
end
