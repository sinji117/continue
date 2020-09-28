class Food < ApplicationRecord
  validates :name, presence: true
  validates :kcal, presence: true
  validates :money, presence: true
  belongs_to :user
end
