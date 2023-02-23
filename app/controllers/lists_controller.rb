class ListsController < ApplicationController

  before_action :set_lists, only: [:show, :edit, :update, :destroy]

  def index
    @lists = Lists.all
  end

  def show
  end

  def new
    @lists = Lists.new
  end

  def create
    @lists = Lists.new(lists_params)
    @lists.save
    redirect_to lists_path(@lists)
  end

  def update
    @lists.update(lists_params)
    redirect_to lists_path(@lists)
  end

  def destroy
    @lists.destroy
    redirect_to lists_path, status: :see_other
  end


  private

  def set_lists
    @lists = Lists.find(params[:id])
  end

  def lists_params
    params.require(:lists).permit(:name)
  end
end
