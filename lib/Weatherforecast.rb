class Weatherforecast
  include HTTParty
  format :json

  base_uri 'api.openweathermap.org'

  def self.get_weather(city)
      appkey = "e794b21bd2822b96484900e8ab4d4e00"
      cnt = "16"
      get("/data/2.5/forecast/daily?q=#{city}&cnt=#{cnt}&appid=#{appkey}")
  end
end