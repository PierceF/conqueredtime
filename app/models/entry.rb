class Entry < ApplicationRecord
  belongs_to :journal
  has_many :milestones, dependent: :destroy
  accepts_nested_attributes_for :milestones, reject_if: proc { |attributes| attributes['title'].blank? }
end
