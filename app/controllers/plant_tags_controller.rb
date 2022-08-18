class PlantTagsController < ApplicationController
  def new
    @plant = Plant.find(params[:plant_id])
    @plant_tag = PlantTag.new
  end

  def create
      @plant = Plant.find(params[:plant_id])
      #im receiving multple tags
      @tags = Tag.where(id: params[:plant_tag][:tag_id])
      #iterate over them
      @tags.each do |tag|
        #create a plant tag for each of the tags
        plant_tag = PlantTag.new(plant: @plant, tag: tag)
        plant_tag.save
      end
      redirect_to garden_path(@plant.garden)
  end




end
