# frozen_string_literal: true

class Item < ApplicationRecord
  validates :price, :wholesale_price, numericality: { greater_than: 0 }, format: { with: /\A\d{1,3}(\.\d{1,2})?\z/ }
  validates :id, :sid, :balance, presence: true
  validates :balance, numericality: { greater_than: 0, only_integer: true }

  def short_name
    name[0, 50]
  end

  def photos_url
    agg_photos.map { |i| "#{base_photo_url}#{i}/700.jpg" }
  end
end
