class PagesController < ApplicationController
  # before_action :authenticate_user!
  # before_action :configure_permitted_parameters, if: :devise_controller?
  def home
    @user               = current_user
    @cooper_distance    = @user.cooper_distance
    @result             = @cooper_distance.to_f
    @vma                = @result / 100
    @vo2max             = @vma * 3.5
    @age                = @user.age
    @result_age         = @age.to_f
    @fcm                = 220 - @result_age
    @percentage_speed   = @user.percentage_speed
    @result_percentage  = @percentage_speed.to_f
    @running_speed      = (@result_percentage/100) * @vma
    @fcm_speed          = (@result_percentage/100) * @fcm
    @minute_speed       = 60 / @running_speed
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:firstname, :cooper_distance, :running_time, :age, :percentage_speed)
  end
end
