class Participant < ApplicationRecord
  belongs_to :meal
  belongs_to :user
  has_many :contributions
end
