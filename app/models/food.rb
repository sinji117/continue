class Food < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :kcal, numericality: { only_integer: true, greater_than: 1, less_than: 100000 }
    validates :money, numericality: { only_integer: true, greater_than: 1, less_than: 100000 }
  end
  def self.search(search)
    if search != ""
      Food.where("name LIKE(?)", "%#{search}%")
      Food.where("note LIKE(?)", "%#{search}%")
    else
      Food.all.limit(1)
    end
  end
  belongs_to :user
end
