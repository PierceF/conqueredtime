class Entry < ApplicationRecord
  belongs_to :journal
  has_many :milestones, dependent: :destroy
  accepts_nested_attributes_for :milestones, reject_if: proc { |attributes| attributes['title'].blank? }

  def last_three_milestones
    self.milestones.order("DATE_TRUNC('second', updated_at) desc, id asc").limit(3)
  end
end
