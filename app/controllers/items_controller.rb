class ItemsController < ApplicationController

  def index
    @items = Item.all.where(parent_id: nil)
  end

  def show
    @item = Item.find_by(id: params[:item_id])
  end

  def new
    @item = Item.new
  end

  def create
  end

end
