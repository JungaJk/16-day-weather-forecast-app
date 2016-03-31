class PagesController < ApplicationController
  def home
  end
  
  def getCityName 
    if params[:city]
        redirect_to weatherforecasts_path(:city => params[:city])
     else 
      respond_to do |f|
      f.html {redirect_to root_url, notice: 'Wrong value parameters.'}
      f.json {head :no_content}
      end
    end
  end    
end
