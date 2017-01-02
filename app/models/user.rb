class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :locations, dependent: :destroy
  has_many :meals, foreign_key: "creator_id", dependent: :destroy
  has_many :customers, dependent: :destroy
  has_many :orders, through: :meals
end
