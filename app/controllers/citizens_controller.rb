class CitizensController < ApplicationController

def new
  @citizen = Citizen.new
end

def create
  @citizen = Citizen.new(citizen_params)

  if @citizen.save
    redirect_to @citizen
  else
    render 'new'
  end
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
