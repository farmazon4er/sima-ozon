class OzonApi
  BASE_URL = 'api-seller.ozon.ru'
  
  attr_reader :header

  def initialize(id, key)
    header = { 'Client-Id': id, 'Api-Key': key, 'Content-Type': 'application/json' }
  end

  def 
end