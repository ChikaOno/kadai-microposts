class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper
  
  private

  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
  
  def counts(user)
    @count_microposts = user.feed_microposts.count
    @count_followings = user.followings.count
    @count_followers = user.followers.count
    # お気に入り機能
    @count_liked_microposts = user.like.count
  end
end
