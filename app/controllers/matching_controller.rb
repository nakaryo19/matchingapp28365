class MatchingController < ApplicationController
  def index
    @users = current_user.matchers
  end

  def liked
    @users = current_user.followers
  end
end
