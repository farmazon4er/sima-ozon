class SimaApi
  BASE_URL = 'https://www.sima-land.ru/api/v5'
  API_TOKEN = ENV['API_KEY']

  def get_categorys(p, api_token)
    response = Faraday.get(BASE_URL + '/category', {'p': p}, {'accept': 'application/json', 'X-Api-Key': API_TOKEN})
    
    parsed_reps = JSON.parse(response.body, symbolize_names: true)
  end

  def get_category(id, api_token)
    response = Faraday.get(BASE_URL + '/category', {'id': id}, {'accept': 'application/json', 'X-Api-Key': API_TOKEN})
    
    parsed_reps = JSON.parse(response.body, symbolize_names: true)
  end

  def get_items(p, api_token)
    response = Faraday.get(BASE_URL + '/item', {'p': p}, {'accept': 'application/json', 'X-Api-Key': API_TOKEN})
    
    parsed_reps = JSON.parse(response.body, symbolize_names: true)
  end

  def get_item(id, by_sid: true, api_token: nil)
    response = Faraday.get(BASE_URL + '/item', {'id': id, by_sid: by_sid}, {'accept': 'application/json', 'X-Api-Key': API_TOKEN})
    
    parsed_reps = JSON.parse(response.body, symbolize_names: true)
  end

  def get_jwt(email: , password: , phone:,  regulation: true)
    response = Faraday.post(BASE_URL + '/signin', 
    {"email": email, "password": password, "phone": phone, "regulation": regulation}.to_json, 
    {'accept': 'application/json'})

    JSON.parse(response.body)['token']
  end
end