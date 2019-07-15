class Achievement < ApplicationRecord
  belongs_to :trophy
  belongs_to :journal
end
