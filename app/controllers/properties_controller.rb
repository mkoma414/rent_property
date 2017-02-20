class PropertiesController < ApplicationController

  before_action :set_property, only: [:show, :edit, :update, :destroy]

  def index
    @properties=Property.all
  end

  def create
    @property = Property.new(property_params)
    @property.save
    redirect_to "/properties"
  end

  def new
    @property = Property.new
    @property.stations.build

  end

  def edit

  end

  def show
    @station = @property.stations
    
  end

  def update
    @property.update(property_params)
    redirect_to "/properties"
  end

  def destroy
    @property.destroy
    redirect_to "/properties"
  end

  private

    def set_property
      @property = Property.find(params[:id])
    end

  def property_params
    # params.require(:property).permit(:property_name, :fee, :address, :building_age, :remarks)
      params.require(:property).permit(:property_name, :fee, :address, :building_age, :remarks,
        stations_attributes: [:line_name, :station_name, :walk_minutes])
  end

end
