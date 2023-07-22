class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :events, inverse_of: :creator, :dependent => :destroy
         has_many :events_users
         has_many :attended_events, through: :events_users, source: :event
end
