class UsersController < ApplicationController
  def index
    @search_params = user_search_params
    @users = User.search(@search_params)
  end
 
  def show
    @user = User.find(params[:id])
    @relationship = Relationship.new
  end


  private

  def user_search_params
    params.fetch(:search, {}).permit(:sex_id, :likesports_id, :liketeam_id, :watching_date_from, :watching_date_to, :prefectures_id, :job_id,:marriage_id)
  end
end
