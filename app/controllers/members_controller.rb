class MembersController < ApplicationController

  def index
    @members = Member.all
  end

  def new 
  	@member = Member.new
  end

  def show
  	@member = Member.find(params[:id])
  end

  def create 
  	@member = Member.new(params[:member])
		
		if @member.save
			redirect_to members_path(@member.id)
		else
			render :new
		end
  end
end
