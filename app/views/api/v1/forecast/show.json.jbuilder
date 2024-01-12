json.zipcode @zip_code
json.cached @cached
json.data do
  # json.coord do
  #   json.lon forecast["coord"]["lon"]
  #   json.lat forecast["coord"]["lat"]
  # end
  #
  # json.weather forecast["weather"]
  #
  # json.base forecast["base"]
  #
  # json.main do
  #   json.temp forecast["main"]["temp"]
  #   json.feels_like forecast["main"]["feels_like"]
  #   json.temp_min forecast["main"]["temp_min"]
  #   json.temp_max forecast["main"]["temp_max"]
  #   json.pressure forecast["main"]["pressure"]
  #   json.humidity forecast["main"]["humidity"]
  # end
  #
  # json.visibility forecast["visibility"]
  #
  # json.wind do
  #   json.speed forecast["wind"]["speed"]
  #   json.deg forecast["wind"]["deg"]
  #   json.gust forecast["wind"]["gust"]
  # end
  #
  # json.clouds forecast["clouds"]
  #
  # json.dt forecast["dt"]
  #
  # json.sys do
  #   json.type forecast["sys"]["type"]
  #   json.id forecast["sys"]["id"]
  #   json.country forecast["sys"]["country"]
  #   json.sunrise forecast["sys"]["sunrise"]
  #   json.sunset forecast["sys"]["sunset"]
  # end
  #
  # json.timezone forecast["timezone"]
  # json.id forecast["id"]
  # json.name forecast["name"]
  # json.cod forecast["cod"]

  json.temp @data["main"]["temp"]
  json.temp_min @data["main"]["temp_min"]
  json.temp_max @data["main"]["temp_max"]
end