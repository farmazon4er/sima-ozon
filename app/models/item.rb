class Item < ApplicationRecord
  validates :price, :wholesale_price, numericality: { greater_than: 0 }, format: { with: /\A\d{1,3}(\.\d{1,2})?\z/ }
  validates :id, :sid, :balance, presence: :true
  validates :balance, numericality: { greater_than: 0, only_integer: true }
end