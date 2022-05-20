class BookmarksController < ApplicationController

  def show
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(prms)

    if @bookmark.save
      redirect_to list_path(@bookmark.list), notice: 'bookmark was successfully created.'
    else
      render :new
    end
  end

  def destroy
  end

  private

  def prms
    params.require(:bookmark).permit(:comment, :movie_id, :list_id)
  end
end
