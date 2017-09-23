class HomesController < ApplicationController
  

  def index
 	@employee = Employee.all
	@hr = HumanResource.find_by(params[:id])
  end

end
