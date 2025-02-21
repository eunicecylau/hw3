class JournalsController < ApplicationController
 
  def index
    @places = Place.all
  end

  def new
    render :template => "journals/new"
  end

  def create
    @place = Place.new
    @place.name = params["name"]
    @place.save
    redirect_to "/journals"
  end

  def show
    @place = Place.find_by({"id" => params["id"]})
    @entries = Place.where({"id" => params["place_id"]})

  end

end