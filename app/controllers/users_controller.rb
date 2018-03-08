class UsersController < ApplicationController
  before_action :authenticate_user!
def profile
  @user = current_user
end

 def all
   @users = User.all
 end

 def show
   @user = User.find(params['id'])
   render 'profile'
 end

  def follow
      unless current_user.following.include?(params['id'])
      current_user.following.push(params['id'])
      current_user.save!
    end
      redirect_to user_path(params['id'])}}
  end

def unfollow
current_user.following.delete(params['id'])
current_user.save!
redirect_to user_path(params['id'])
end

end
