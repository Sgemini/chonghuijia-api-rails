class AnimalsController < ApplicationController

  def index
    animals = Animal.waiting_for_adopt
    animals = animals.search_animals(params[:animal_type], params[:gender], params[:size]) if params[:search]
    render status: 200, json: { animals: animals }
  end

  def show
    animal = Animal.find_by!(id: params[:id])
    render status: 200, json: { animal: animal }
  end

  private

  def animal_params
    params.require(:animals).permit(:id, :animal_type, :gender, :size)
  end
end
