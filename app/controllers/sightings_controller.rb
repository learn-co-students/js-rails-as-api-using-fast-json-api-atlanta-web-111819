class SightingsController < ApplicationController
  def index
    @sightings = Sighting.all 
    render json: SightingSerializer.new(@sightings)
  end
  def show
    options ={
      include: [:bird, :location]
    }
    @sighting = Sighting.find(params[:id])
    render json: SightingSerializer.new(@sighting, options)
  end
end