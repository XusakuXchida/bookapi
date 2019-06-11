class Book < ApplicationRecord
  validates :title, presence: true,
                      length: { maximum: 250 }
  validates :description, presence: true
end
