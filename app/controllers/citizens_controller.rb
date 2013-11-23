class CitizensController < ApplicationController

def new
end

def create
  @citizen = Citizen.new(citizen_params)
  @citizen.save
  redirect_to @citizen
end

def show
  @citizen = Citizen.find(params[:id])
end

def index
  @citizens = Citizen.all
end

private
  def citizen_params
    params.require(:citizen).permit(:name, :birthdate, :father, :mother, :profession)
  end

end
