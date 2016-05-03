class LandsController < ApplicationController
	def index
		@lands = Land.all
	end

	def show
		@land = Land.friendly.find(params[:id])
	end

	def new
		@land = Land.new
	end

	def import
  		Land.import(params[:file])
  		redirect_to lands_path, notice: "Lands addes succesfully"
	end

	def create
		@land = Land.friendly.find(land_params)
		if @land.save
			redirect_to land_path(@land)
		else
			render :new
		end
	end

	def land_params
  		params.require(:land).permit(
      	:address,
      	:neighborhood,
      	:city,
      	:slug
      	)
  	end

end
