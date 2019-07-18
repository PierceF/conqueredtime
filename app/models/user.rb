class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :journals, dependent: :destroy
  has_many :pomodoros, dependent: :destroy

  after_create do
    Journal.create!(title: "Fitness", user: self, image: "")
    Journal.create!(title: "Spirituality", user: self)
    Journal.create!(title: "Lifestyle", user: self, image: "")
    Journal.create!(title: "Career", user: self, image: "")
  end

  def user_minutes
    total = 0
    journals.each do |e|
      total += e.journal_minutes
    end
    total
  end

  def self.top_ten
    User.all.sort_by(&:user_minutes).reverse!
  end
end
