class EmployeesController < ApplicationController
  
   before_action :get_user
   before_action :emp, only: [:show, :create, :index]


  def index
  	@employees = Employee.all
  end

  def new
    	@employee = Employee.new
  end

  def create
    @user = current_user
  	@employee = Employee.new(employee_params)
    if @employee.save
      @employee.update(:user_id=>@user.id)
  		flash[:notice] = "employee successfully created."
      redirect_to root_path
  	else
  		flash[:notice] = "somthing error"
  		render "new"
  	end
  end

  def edit
  	@employee = Employee.find(params[:id])
  end


  def update
  	@employee = Employee.find(params[:id])
  	if @employee.update_attributes(employee_params)
  		flash[:notice] = "update successfully"
  		redirect_to :controller=>'employees', :action=>'index'
  	else
  		flash[:notice] = 'update not successfully'
  		render 'edit'
  	end
  end

  def show
    	@employee = Employee.find(params[:id])
  end

  # def show_family
  #   @employee = Employee.find(params[:id])
    
  # end



  private
  	def employee_params
  		params.require(:employee).permit(:first_name, :last_name, :address, :place, :date_of_birth, :contact_no,:email, :designation, :company_name,:total_exp,:father_name,:spouse_name,:mother_name,:children_name,:salary,:pf,:esic,:total_salary,:image, :user_id)
  	end

    def emp
      @employee = Employee.find_by(params[:id])
    end

    def get_user
      @user = current_user
    end
    
end

