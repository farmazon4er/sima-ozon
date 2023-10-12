# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails dbseed command (or created alongside the database with dbsetup).
#
# Example
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name genre_name)
#   end

Item.create!(
  id: 6212242,
  sid: 5155518,
  name:"Пакеты фасовочные Доляна «Стандарт», 17×28 см, 50 шт, ПНД 8 мкм",
  description:"",
  slug:"pakety-fasovochnye-dolyana-standart-17-28-cm-50-sht-pnd-8-mkm",
  balance:"3014",
  price:79,
  box_depth:18,
  box_height:1.5,
  box_width:4,
  depth:0,
  height:0,
  width:0,
  weight:45,
  is_price_fixed:false,
  is_adult:false,
  is_markdown:false,
  agg_photos:[0, 1, 2],
  base_photo_url:"https//goods-photos.static1-sima-land.com/items/6212242/",
  wholesale_price:21,
  is_protected:false
)
