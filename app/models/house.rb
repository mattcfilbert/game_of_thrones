class House < ApplicationRecord
  validates :name, :sentence, presence: true
  has_many :characters, dependent: :destroy
end
