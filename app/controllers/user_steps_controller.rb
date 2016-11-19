class UserStepsController < ApplicationController
  include Wicked::Wizard
  steps :personal, :social

  def show
    @user = current_user
    render_wizard
  end

  def update
    @user = current_user
    @user.update_attributes(user_params)
    render_wizard @user
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name, :twitter_username, :github_username, :website, :date_of_birth, :bio)
  end
end
