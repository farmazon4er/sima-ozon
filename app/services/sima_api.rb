class SimaApi
  BASE_URL = 'https://www.sima-land.ru/api/v5'
  # api_key = ENV['API_KEY']
  attr_reader :header

  def initialize(api_key)
    @header = {'accept': 'application/json', 'X-Api-Key': api_key}
  end

  # p - номер страница, по умолчанию 1
  def get_categorys(p)
    response = Faraday.get(BASE_URL + '/category', 
    {'p': p}, 
    header)
    
    parsed_reps = JSON.parse(response.body, symbolize_names: true)
  end

  def get_category(id)
    response = Faraday.get(BASE_URL + '/category/' + id.to_s, 
    {}, 
    header)
    
    parsed_reps = JSON.parse(response.body, symbolize_names: true)
  end

  # p - номер страница, по умолчанию 1
  def get_items(p)
    response = Faraday.get(BASE_URL + '/item', 
    {'p': p}, 
    header)
    
    parsed_reps = JSON.parse(response.body, symbolize_names: true)
  end

  # by_sid - true поиск включен по артикулу
  # view - краткое описание товара если view = 'brief', удобно для просмотра цена и остатков. 
  def get_item(id, by_sid: true, view: '')
    response = Faraday.get(BASE_URL + '/item/' + id.to_s, 
    {by_sid: by_sid, view: view}, 
    header)
    
    parsed_reps = JSON.parse(response.body, symbolize_names: true)
  end

  def get_jwt(email: , password: , phone:,  regulation: true)
    response = Faraday.post(BASE_URL + '/signin', 
    {"email": email, "password": password, "phone": phone, "regulation": regulation}.to_json, 
    {'accept': 'application/json'})

    JSON.parse(response.body)['token']
  end
end
