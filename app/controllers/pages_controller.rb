class PagesController < ApplicationController

  def home
  end
  
  def getCityName 
    if params[:city].present?
   
   # @countryCode = ISO3166::Country.find_country_by_name(params[:country])
    #@countryCode = @countryCode.alpha2
      redirect_to weatherforecasts_path(:city => params[:city],:country => params[:country])
     else 
      respond_to do |f|
      f.html {redirect_to root_url, notice: 'Wrong value parameters.'}
      f.json {head :no_content}
      end
    end
  end    
end
