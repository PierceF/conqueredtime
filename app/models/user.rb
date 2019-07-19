class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :journals, dependent: :destroy
  has_many :pomodoros, dependent: :destroy

  after_create do
    Journal.create!(title: "Fitness", user: self, image: "https://res.cloudinary.com/dyeffcfck/image/upload/v1563515817/undraw_working_out_6psf_o0mivg.png")
    Journal.create!(title: "Spirituality", user: self, image: "https://res.cloudinary.com/dyeffcfck/image/upload/v1563515959/undraw_mindfulness_scgo_desjku.png")
    Journal.create!(title: "Lifestyle", user: self, image:"https://res.cloudinary.com/dyeffcfck/image/upload/v1563515559/undraw_Fall_is_coming_yl0x_cd5yqi.png")
    Journal.create!(title: "Career", user: self, image: "https://res.cloudinary.com/dyeffcfck/image/upload/v1563515727/undraw_all_the_data_h4ki_odncut.png")
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
