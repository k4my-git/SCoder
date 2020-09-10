class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@codes = @user.codes.all
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	if @user.update(user_params)
  	   flash[:notice] = "successfully"
  		redirect_to user_path(@user.id)
  	else
		render :edit
	end
  end

  private
  def user_params
	params.require(:user).permit(:name, :profile_image_id)
  end
end
