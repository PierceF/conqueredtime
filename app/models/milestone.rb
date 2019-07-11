class Milestone < ApplicationRecord
  has_many :pomodoros, dependent: :destroy
  belongs_to :entry

  def time
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
end
