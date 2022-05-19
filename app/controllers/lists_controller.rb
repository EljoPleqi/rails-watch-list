class ListsController < ApplicationController
before_action :find_list, only: [:show, :edit, :update, :destroy]

  def index
    @lists = List.all
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(prms)

    if @list.save
      redirect_to @list, notice: 'List was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @list.update(prms)
    redirect_to task_path(@list)
  end

  def destroy
    @list.destroy
    redirect_to lists_path
  end

  private

  def find_list
    @list = List.find(params[:id])
  end

  def prms
    params.require(:list).permit(:name)
  end
end
