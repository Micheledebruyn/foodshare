class Meal < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :reviews
  has_many :pictures
  has_many :participants
end
