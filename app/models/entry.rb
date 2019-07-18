class Entry < ApplicationRecord
  belongs_to :journal
  has_many :milestones, dependent: :destroy
  has_many :pomodoros, through: :milestones
  accepts_nested_attributes_for :milestones, reject_if: proc { |attributes| attributes['title'].blank? }

  def last_three_milestones
    self.milestones.order("DATE_TRUNC('second', updated_at) desc, id asc").limit(3)
  end

  def entry_minutes
    total = 0
    milestones.each do |m|
      total += m.seconds
    end
    total
  end
  # def time
  #   minutes = self.entry_minutes
  #   if minutes >= 60
  #     hours = minutes / 60
  #     minutes = minutes % 60

  #     "#{hours} hour(s) #{minutes} min(s)"
  #   else
  #     "#{minutes} min(s)"
  #   end
  # end

  def time
    seconds = self.entry_minutes
    if seconds >= 60
      minutes = seconds / 60
      hours = minutes / 60
      minutes = minutes % 60
      seconds = seconds % 60

      "#{hours}h #{minutes}min"
    else seconds >= 60
      minutes = seconds / 60
      seconds = seconds % 60
      "#{minutes}min"
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


  # def time
  #   seconds = self.entry_minutes
  #   if seconds >= 60
  #     minutes = seconds / 60
  #     hours = minutes / 60
  #     minutes = minutes % 60
  #     seconds = seconds % 60

  #     "#{hours}h #{minutes}m"
  #   elsif seconds >= 60
  #     minutes = seconds / 60
  #     seconds = seconds % 60
  #     "#{minutes}m #{seconds}s"
  #   else
  #     "#{seconds}s"
  #   end
  # end
