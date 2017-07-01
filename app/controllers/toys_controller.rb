class ToysController < ApplicationController
  def new
    @toy = Toy.new
  end

  def create
    if Toy.create(toy_parameter)
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def toy_parameter
    params.require(:toy).permit(:name, :genre)
  end
end
