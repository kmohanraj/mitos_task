class HomesController < ApplicationController
  
	
   before_action :get_user
   before_action :emp, only: [:show, :create, :index]

  def index
 	@employee = Employee.all
	@hr = HumanResource.find_by(params[:id])
  end


  private

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
