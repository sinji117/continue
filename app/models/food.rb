class Food < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :kcal, numericality: { only_integer: true, greater_than: 1, less_than: 100000 }
    validates :money, numericality: { only_integer: true, greater_than: 1, less_than: 100000 }
    belongs_to :user
  end
  def self.search(search)
    if search != ""
      Food.where("name LIKE(?)", "%#{search}%")
      Food.where("note LIKE(?)", "%#{search}%")
    else
      Food.all
    end
  end
end
