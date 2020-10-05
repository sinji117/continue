class Food < ApplicationRecord
  validates :name, presence: true
  validates :kcal, presence: true
  validates :money, presence: true
  belongs_to :user

  def self.search(search)
    if search != ""
      Food.where("name LIKE(?)", "%#{search}%")
    else
      Food.all
    end
  end
end
