class EmployeesController < ApplicationController
	def create
         @employees = Employee.new(employee_params)
         if @employees.save
              redirect_to '/index'
         else
        	abort(@employees.errors.inspect)
       end
	end

  def new
  	 @employees = Employee.new
  end

  def index
  	@employees = Employee.all
  end

    def edit
    	@employees =Employee.find_by_id(params[:id]) 
    end

    def update
        @employees = Employee.find_by_id(employee_params[:id]) 
        if employee_params[:email].present?
           @employees.update_attributes(employee_params)
        end
        if @employees.save
            redirect_to '/index'
        else
           abort(@employees.errors.messages.inspect)    
        end
    end


  def destroy
    	 @employees = Employee.find_by_id(params[:id])
         if @employees.present?
          	@employees.destroy
            redirect_to '/index'
         end
        
    end

    private
  def employee_params
    params.require(:employee).permit(:id, :emp_code, :first_name, :last_name, :email, :password)
  end

end
