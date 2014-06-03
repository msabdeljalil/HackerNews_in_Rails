class ItemsController < ApplicationController
  def index
    @items = Item.all.where(parent_id: nil)
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to @item
    else 
      # render plain: params[:item].inspect
      render 'new'
    end
  end


  private

  def item_params
    params.require(:item).permit(:name, :link, :body)
  end

end
