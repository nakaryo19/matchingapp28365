class TagsController < ApplicationController
  def search
    @search_params = tag_search_params  #検索結果の画面で、フォームに検索した値を表示するために、paramsの値をビューで使えるようにする
    @tags = Tag.search(@search_params).join(user)  #Reservationモデルのsearchを呼び出し、引数としてparamsを渡している。
  end

  private

  def tag_search_params
    params.fetch(:search, {}).permit(:sex_id, :likesports_id, :liketeam_id, :watching_date_in_from, :watching_date_in_to, :prefectures_id, :job_id,:marriage_id).merge(user_id: current_user.id)
    #fetch(:search, {})と記述することで、検索フォームに値がない場合はnilを返し、エラーが起こらなくなる
    #ここでの:searchには、フォームから送られてくるparamsの値が入っている
  end
end
