class WeatherforecastsController < ApplicationController
    require 'Weatherforecast'
    
    
  def index
 
     @weathers = Weatherforecast.get_weather("London")

  end

end
