class Trophy < ApplicationRecord
  has_many :achievements, dependent: :destroy
end
