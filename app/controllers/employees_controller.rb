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
    @user = User.find_by(params[:id])
  	@employee = Employee.new(employee_params)
    if @employee.save
      @employee.update(:user_id=>@user.id)
  		flash[:notice] = "employee successfully created."
  		redirect_to :controller=>"employees", :action=>"index"
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

  def show_family
    @employee = Employee.find(params[:id])

    # if !@employee.company_name.blank?
    
  end



  private
  	def employee_params
  		params.require(:employee).permit(:first_name, :last_name, :address, :place, :date_of_birth, :contact_no,:email, :designation, :company_name,:total_exp,:father_name,:spouse_name,:mother_name,:children_name,:salary,:pf,:esic,:total_salary,:image, :user_id)
  	end

    def emp
      @employee = Employee.find_by(params[:id])
      p "eeeeeeeeeeeee"

      p @employee
      p "eeeeeeeeeeeee"
    end

    def get_user
      @user = User.find_by(params[:id])
      p "1111111111111111111"
      p @user
      p "1111111111111111111"
    end
    
end

