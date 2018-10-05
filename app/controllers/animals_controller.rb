class AnimalsController < ApplicationController

  def index
    animals = Animal.all
    render status: 200, json: { animals: animals }
  end

  def show
    animal = Animal.find_by(id: params[:id])
    render status: 200, json: { animal: animal }
  end
end
