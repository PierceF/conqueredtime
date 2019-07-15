class Entry < ApplicationRecord
  belongs_to :journal
  has_many :milestones, dependent: :destroy
  accepts_nested_attributes_for :milestones, reject_if: proc { |attributes| attributes['title'].blank? }

  def last_three_milestones
    self.milestones.order("DATE_TRUNC('second', updated_at) desc, id asc").limit(3)
  end

  def entry_minutes
    total = 0
    milestones.each do |m|
      total += m.minutes
    end
    total
  end
  def time
    minutes = self.entry_minutes
    if minutes >= 60
      hours = minutes / 60
      minutes = minutes % 60

      "#{hours} hour(s) #{minutes} min(s)"
    else
      "#{minutes} min(s)"
    end
  end
end
