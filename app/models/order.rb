class Order < ApplicationRecord
  belongs_to :product
  belongs_to :cabaz
end