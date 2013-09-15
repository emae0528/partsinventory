class PagesController < ApplicationController

  def index
  end

  def dashboard
    @pending_items = Item.recent_pending
  end

end
