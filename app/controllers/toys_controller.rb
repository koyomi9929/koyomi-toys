class ToysController < ApplicationController
  before_action :authenticate_user!, only: :new
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
    params.require(:toy).permit(:name, :genre, :detail, :path, :image)
  end
end
