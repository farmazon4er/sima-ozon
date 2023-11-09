class ItemFromSima
  def self.create_item(resp)
    Item.create!(
      id: resp[:id],
      sid: resp[:sid],
      name: resp[:name],
      description: resp[:description],
      slug: resp[:slug],
      balance: resp[:balance],
      price: resp[:price],
      wholesale_price: resp[:wholesale_price],
      box_depth: resp[:box_depth],
      box_height: resp[:box_height],
      box_width: resp[:box_width],
      depth: resp[:depth],
      height: resp[:height],
      width: resp[:width],
      weight: resp[:weight],
      is_price_fixed: resp[:is_price_fixed],
      is_adult: resp[:is_adult],
      is_markdown: resp[:is_markdown],
      is_protected: resp[:is_protected],
      agg_photos: resp[:agg_photos],
      base_photo_url: resp[:base_photo_url],
    )
  end
end
