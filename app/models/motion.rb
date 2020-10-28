class Motion < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :kcal, numericality: { only_integer: true, greater_than: 1, less_than: 100000 }
    validates :time, numericality: { only_integer: true, greater_than: 1, less_than: 100000 }
  end
  belongs_to :user
end
