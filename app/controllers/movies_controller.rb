class MoviesController < ApplicationController
  def lists
  end

  def index
  end

  def show
  end

  private
  def prms
    params.require(:list).permit(:titlte, :overview, :poster_url, :rating)
  end
end
