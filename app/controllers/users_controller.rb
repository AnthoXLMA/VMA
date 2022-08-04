class UsersController < ApplicationController
  def show
    @user = current_user
    @vma = @user.cooper_distance / 100
    @running_time = @user.running_time / 60
  end

  def update
  @user = User.find(params[:id])
    @user.update(user_params)
      if @user.update(user_params)
        flash[:notice] = 'User was successfully updated.'
        redirect_to root_path
      else
        render :action => "edit"
    end
  end

  private

  def set_user
  end

  def user_params
    params.require(:user).permit(:firstname, :cooper_distance, :running_time, :age, :percentage_speed)
  end
end
