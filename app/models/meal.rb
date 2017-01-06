class Meal < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: "creator_id"
  has_many :reviews, dependent: :destroy
  has_many :pictures, dependent: :destroy
  has_many :customers, dependent: :destroy

  mount_uploader :photo, PhotoUploader
end
