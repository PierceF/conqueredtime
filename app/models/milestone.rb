class Milestone < ApplicationRecord
  has_many :pomodoros, dependent: :destroy
  belongs_to :entry

  def minutes
    total = 0
    pomodoros.each do |p|
      if p.start.nil? || p.end.nil?
        time_length = 0
      else
        time_length = ((p.end - p.start)/60).to_i
      end
      total += time_length
    end
    total
  end

  def time
    minutes = self.minutes
    if minutes >= 60
      hours = minutes / 60
      minutes = minutes % 60

      "#{hours} hour(s) #{minutes} min(s)"
    else
      "#{minutes} min(s)"
    end
  end
end
