class Weatherforecast
  include HTTParty
  format :json

  base_uri 'api.openweathermap.org'
   @appkey = "e794b21bd2822b96484900e8ab4d4e00"
  def self.get_weather(city)
      cnt = "16"
      get("/data/2.5/forecast/daily?q=#{city}&cnt=#{cnt}&appid=#{@appkey}")

  end
  
  def self.get_currunt_weather(city)
      get("/data/2.5/weather?q=#{city}&appid=#{@appkey}")
  end
end


