class WeatherforecastsController < ApplicationController
    require 'Weatherforecast'
    
  def index
    if params[:city].present?
        
        
        
         @weathers = Weatherforecast.get_weather(params[:city])


    end
  end
end
