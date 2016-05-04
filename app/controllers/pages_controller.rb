class PagesController < ApplicationController
  def home
  end

  	def robots
  		respond_to :text
	end

	def sitemap
    	@lands = Land.all
    respond_to do |format|
      format.xml
    end
  end

end
