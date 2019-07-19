class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :journals, dependent: :destroy
  has_many :pomodoros, dependent: :destroy

  after_create do
    Journal.create!(title: "Fitness", user: self, image: "https://res.cloudinary.com/dyeffcfck/image/upload/v1563513755/abc3_iuo7ge.png")
    Journal.create!(title: "Spirituality", user: self, image: "https://res.cloudinary.com/dyeffcfck/image/upload/v1563513843/abc2_n7tezd.png")
    Journal.create!(title: "Lifestyle", user: self, image:"https://res.cloudinary.com/dyeffcfck/image/upload/v1563513906/abc4_ylric4.png")
    Journal.create!(title: "Career", user: self, image: "https://res.cloudinary.com/dyeffcfck/image/upload/v1563513850/abc1_zwux6y.png")
  end


  def user_minutes
    total = 0
    journals.each do |e|
      total += e.journal_minutes
    end
    total
  end

  # def time
  #   minutes = self.journal_minutes
  #   if minutes >= 60
  #     hours = minutes / 60
  #     minutes = minutes % 60

  #     "#{hours} hour(s) #{minutes} min(s)"
  #   else
  #     "#{minutes} min(s)"
  #   end
  # end

  def time
    minutes = self.user_minutes
    if minutes >= 60
      hours = minutes / 60
      minutes = minutes % 60

      "#{hours}h #{minutes}min"
    else
      "#{minutes} min"
    end
  end

  def self.top_ten
    User.all.sort_by(&:user_minutes).reverse!
  end
end
