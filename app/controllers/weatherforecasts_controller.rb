class WeatherforecastsController < ApplicationController
    require 'Weatherforecast'
    
    def index
     @weathers = Weatherforecast.get_weather(params[:city])
     @currentWeather = Weatherforecast.get_currunt_weather(params[:city])
     @weather_img_url = "http://openweathermap.org/img/w/";
    end
end
