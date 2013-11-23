class CitizensController < ApplicationController

def new
end

def create
  render text: params[:citizen].inspect
end

end
