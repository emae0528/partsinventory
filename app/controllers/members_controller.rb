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

    def destroy
    @member = Member.find(params[:id])
    @member.destroy

    redirect_to members_path
  end

    def update
    @member = Member.find(params[:id])
    @member.update_attributes(params[:member])
    if @member.save
      redirect_to members_path(params[:id])
    else
      redirect_to :back, notice: "Error"
      end
  end

  def edit
    @member = Member.find(params[:id])
  end

end
