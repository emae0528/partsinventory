class itemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show 
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(params[:item])
    
    if @item.save

      redirect_to items_path(@item.id)

    else
      render :new
    end
  end



end
