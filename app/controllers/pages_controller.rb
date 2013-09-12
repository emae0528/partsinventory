class PagesController < ApplicationController

  def index
  end

  def dashboard
    @pending_items = Item.where(:status => "Pending").first(5)
  end

end
