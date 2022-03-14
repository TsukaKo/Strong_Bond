class UsersController < ApplicationController

  def index
  end

  def show
    @user = User.find(params[:id])
    @group = @user.group
  end

  def edit
  end

  def update
  end

  def destroy
  end
 
  private
  def users_params
    params.require(:user).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :postal_code, :address, :telephone_number, :email)
  end
end
