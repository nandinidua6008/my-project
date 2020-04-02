class SessionsController < ApplicationController
  def new

  end

 def create
   @admin = Admin.where(email: params[:email])&&Admin.where(password: params[:password])

   if @admin.present?
      redirect_to '/index'
    else

      redirect_to :welcome
   end
end

  def login
  end

   def edit
      @employees =Employee.find(params[:email]) 
    end

  def index
  	@employees = Employee.all
  end

  def welcome
  end
def destroy
         
    session[:Employee_email] = nil         
    redirect_to '/welcome'     
  end  

  private
  def sessions_params
    params.require(:employee).permit(:id, :emp_code, :first_name, :last_name, :email, :password)
  end
  private
  def admins_params
    params.require(:admin).permit(:id, :email, :password)
  end

end
