class Basket < ApplicationRecord
  belongs_to :order
  has_many :products, through: :order
end
