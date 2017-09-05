class HomesController < ApplicationController
  def index
 	@employee = Employee.all
  	
  end
end
