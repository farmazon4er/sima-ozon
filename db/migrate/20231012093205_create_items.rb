# frozen_string_literal: true

class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items, id: false do |t|
      t.integer :id, primary_key: true, null: false, index: { unique: true }
      t.integer :sid, null: false, index: { unique: true }
      t.string :name
      t.text :description
      t.string :slug
      t.integer :balance, default: 0, null: false
      t.decimal :price, precision: 10, scale: 2, null: false
      t.decimal :wholesale_price, precision: 10, scale: 2, null: false

      t.decimal :box_depth, precision: 7, scale: 2
      t.decimal :box_height, precision: 7, scale: 2
      t.decimal :box_width, precision: 7, scale: 2
      t.decimal :depth, precision: 7, scale: 2
      t.decimal :height, precision: 7, scale: 2
      t.decimal :width, precision: 7, scale: 2
      t.decimal :weight, precision: 7, scale: 2
      t.boolean :is_price_fixed
      t.boolean :is_adult
      t.boolean :is_markdown
      t.boolean :is_protected

      t.text :agg_photos, array: true, default: []
      t.string :base_photo_url
      t.timestamps
    end
  end
end
