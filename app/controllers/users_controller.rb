class UsersController < ApplicationController
  def new
     @user = User.new
  end
    
  def create
        @user = User.create(user_params)
        if @user.save
          redirect_to root_path
        end
  end

  def show
    @users = User.all
    # abort(@user.inspect)
  end

  def edit
    @user = User.find_by_id(params[:id]) if params[:id].present? 
  end

  def update
    @user = User.find_by_id(user_params[:id]) if user_params[:id].present?
    @user.update_attributes(user_params)
    
  end

  def destroy
    @user = User.find(params[:id])
  @user.destroy
 
  redirect_to user_path 
   end

  private
  def user_params
    params.require(:user).permit(:id, :name, :age, :college)
  end
end