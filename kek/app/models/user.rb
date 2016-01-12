class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :topics
  has_many :comments
  has_many :donations
  has_many :suggestions
  has_many :donations
  has_many :invitations
  has_many :room_petitions
end
