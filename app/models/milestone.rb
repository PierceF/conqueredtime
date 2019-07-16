class Milestone < ApplicationRecord
  has_many :pomodoros, dependent: :destroy
  belongs_to :entry

  def self.ordered
    order("DATE_TRUNC('second', updated_at) desc, id asc")
  end

  def seconds
    total = 0
    pomodoros.each do |p|
      if p.start.nil? || p.end.nil?
        time_length = 0
      else
        time_length = (p.end - p.start).to_i
      end
      total += time_length
    end
    total
  end

  def time
    seconds = self.seconds
    if seconds >= 60 * 60
      minutes = seconds / 60
      hours = minutes / 60
      minutes = minutes % 60
      seconds = seconds % 60

      "#{hours} h #{minutes} m #{seconds} s"
    elsif seconds >= 60
      minutes = seconds / 60
      seconds = seconds % 60
      "#{minutes} m #{seconds} s"
    else
      "#{seconds} s"
    end
  end

  def star_average
    if pomodoros.count.positive?
      rating = 0
      count = 0
      pomodoros.each do |pomodoro|
        unless pomodoro.stars == nil
          rating += pomodoro.stars
          count += 1
        end
      end
      (rating.to_f / count).round(2)
    else
      nil
    end
  end
end
