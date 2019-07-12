class Journal < ApplicationRecord
  belongs_to :user
  has_many :entries, dependent: :destroy

  def last_three_entries
    entries.order("DATE_TRUNC('second', updated_at) desc, id asc").limit(3)
  end
end
