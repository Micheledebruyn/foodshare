class Customer < ApplicationRecord
  belongs_to :meal
  belongs_to :user
  has_many :orders, dependent: :destroy
end
