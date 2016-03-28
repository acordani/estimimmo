class FlatsController < ApplicationController

  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end




  def flat_params
  params.require(:flat).permit(
      :first_name,
      :last_name,
      :surface_land,
      :surface_habitation,
      :common_wall,
      :rooms,
      :bedroom,
      :bathroom,
      :surface_carrez,
      :year_construction,
      :latitude,
      :longitude,
      :address,
      :city,
      photos: [])
  end



end
