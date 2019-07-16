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

      "#{hours} hour(s) #{minutes} min #{seconds} sec"
    elsif seconds >= 60
      minutes = seconds / 60
      seconds = seconds % 60
      "#{minutes} min #{seconds} sec"
    else
      "#{seconds} sec"
    end
  end

  def star_average
    if pomodoros.count.positive?
      rating = 0
      pomodoros.each do |pomodoro|
        rating += pomodoro.stars
      end
      (rating.to_f / pomodoros.all.count).round(2)
    else
      nil
    end
  end
end
