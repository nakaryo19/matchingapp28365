class UsersController < ApplicationController
  def index
    @search_params = user_search_params
    @users = User.search(@search_params)
  end
 
  def show
    @user = User.find(params[:id])
  end

  private

  def user_search_params
    params.fetch(:search, {}).permit(:sex_id, :likesports_id, :liketeam_id, :watching_date_from, :watching_date_to, :prefectures_id, :job_id,:marriage_id)
    #fetch(:search, {})と記述することで、検索フォームに値がない場合はnilを返し、エラーが起こらなくなる
    #ここでの:searchには、フォームから送られてくるparamsの値が入っている
  end
end
