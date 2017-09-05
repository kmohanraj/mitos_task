class HumanResourcesController < ApplicationController
  before_action :get_user
  # before_action :set_emp, only: [:show , :index]

  def index
  	@hr = HumanResource.all
  end

  def mew
  	@hr = HumanResource.new
  end

  def create
    @user = User.find_by(params[:id])
  	@hr = HumanResource.new(hr_params)
  	if @hr.save
      @hr.update(:user_id=>@user.id)
  		flash[:notice] = 'successfully created'
  		redirect_to :controller=>'employees', :action=>'index'
  	else
  		flash[:notice] = 'invalid'
  		render 'new'
  	end
  end
  def edit
  	@hr = HumanResources.find(params[:id])
  end

  def update
  	@hr = HumanResources.find(params[:id])
  	if @hr.update_attributes(hr_params)
  		flash[:notice] = 'update successfully'
  		redirect_to :controller=>'human_resources', :action=>'index'
  	else
  		flash[:notice] = 'somthing wrong'
  		render 'edit'
  	end
  end

  def show
  	@hr = HumanResources.find(params[:id])
  end

  private
  	def hr_params
  		params.require(:hr).permit(:first_name,:last_name,:company_name,:place,:email,:contact_no)

  	end

    def get_user
      @user = User.find_by(params[:id])
    end
end
