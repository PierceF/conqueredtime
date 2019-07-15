class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :journals, dependent: :destroy
  has_many :pomodoros, dependent: :destroy

  after_create do
    Journal.create!(title: "Fitness", user: self)
    Journal.create!(title: "Spirituality", user: self)
    Journal.create!(title: "Lifestyle", user: self)
    Journal.create!(title: "Career", user: self)
  end
end
