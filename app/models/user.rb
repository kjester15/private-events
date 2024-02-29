class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # attr_accessor :first_name, :last_name
  has_many :events, foreign_key: "creator_id", class_name: "Event"
  has_many :attended_events, foreign_key: "attendee_id", class_name: "Event", through: :attended_event
end
