class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_many :games, dependent: :destroy
  has_many :locations, through: :games

  # def name_display
  #   if first_name || last_name
  #     "#{first_name} #{last_name}".strip.squeeze(" ")
  #   elsif
  #     username
  #   else
  #     email
  #   end
  # end

end
