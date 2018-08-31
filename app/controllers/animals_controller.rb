class AnimalsController < ApplicationController

  def index
    animals = Animal.all
    render status: 200, json: { animals: animals }
  end
end
