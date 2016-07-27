class PagesController < ApplicationController
  def home
  end

  	def robots
  		respond_to :text
  		expires_in 6.hours, public: true
	end

	def sitemap
	    @flats = Flat.all
	    respond_to do |format|
	        format.xml { render layout: false }
	        format.txt { render layout: false }
	    end
	end

	
end
