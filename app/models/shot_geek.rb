class ShotGeek < ActiveRecord::Base
    has_many :notes
    has_many :shots, through: :notes
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
