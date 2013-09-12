class ItemsController < ApplicationController

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

    def destroy
    @item = Item.find(params[:id])
    @item.destroy

    redirect_to items_path
  end

    def update
    @item = Item.find(params[:id])
    @item.update_attributes(params[:item])
    if @item.save
      redirect_to item_path(params[:id])
    else
      redirect_to :back, notice: "Error"
      end
  end

  def edit
    @item = Item.find(params[:id])
  end


end
