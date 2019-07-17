class Pomodoro < ApplicationRecord
  belongs_to :milestone, optional: true
  belongs_to :user, optional: true

  def seconds
    total = 0
      if start.nil? || self.end.nil?
        time_length = 0
      else
        time_length = (self.end - self.start).to_i
      end
      total += time_length
  end

  def time
    seconds = self.seconds
    if seconds >= 60 * 60
      minutes = seconds / 60
      hours = minutes / 60
      minutes = minutes % 60
      seconds = seconds % 60

      "#{hours} h #{minutes} min"
    else seconds >= 60
      minutes = seconds / 60
      seconds = seconds % 60
      "#{minutes} min"
    end
  end
end


# def time
#     seconds = self.seconds
#     if seconds >= 60 * 60
#       minutes = seconds / 60
#       hours = minutes / 60
#       minutes = minutes % 60
#       seconds = seconds % 60

#       "#{hours} h #{minutes} min #{seconds}"
#     elsif seconds >= 60
#       minutes = seconds / 60
#       seconds = seconds % 60
#       "#{minutes} m #{seconds} s"
#     else
#       "#{seconds} s"
#     end
#   end
