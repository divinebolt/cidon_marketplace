class Order < ApplicationRecord
  has_many :products
  has_many :baskets
end
