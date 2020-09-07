class Tag < ApplicationRecord
  belongs_to :user

  scope :search, -> (search_params) do      #scopeでsearchメソッドを定義。(search_params)は引数
    return if search_params.blank?      #検索フォームに値がなければ以下の手順は行わない

    sex_id_is(search_params[:sex_id])
      .likesports_id_is(search_params[:likesports_id])
      .liketeam_id_is(search_params[:liketeam_id])
      .watching_date_from(search_params[:watching_date_from])
      .watching_date_to(search_params[:watching_date_to])
      .prefectures_id_is(search_params[:prefectures_id])
      .job_id_is(search_params[:job_id])
      .marriage_id_is(search_params[:marriage_id])   #下記で定義しているscopeメソッドの呼び出し。「.」で繋げている
  end

  scope :sex_id_is, -> (sex_id) { where(sex_id: sex_id) if sex_id.present? }  #scopeを定義。
  scope :likesports_id_is, -> (likesports_id) { where(likesports_id: likesports_id) if likesports_id.present? }
  scope :liketeam_id_is, -> (liketeam_id) { where(liketeam_id: liketeam_id) if liketeam_id.present? }
  scope :watching_date_from, -> (from) { where('? <= watching_date', from) if from.present? }
  scope :watching_date_to, -> (to) { where('watching_date <= ?', to) if to.present? }
   #日付の範囲検索をするため、fromとtoをつけている
  scope :prefectures_id_is, -> (prefectures_id) { where(prefectures_id: prefectures_id) if prefectures_id.present? }
  scope :job_id_is, -> (job_id) { where(job_id: job_id) if job_id.present? }
  scope :marriage_id_is, -> (marriage_id) { where(marriage_id: marriage_id) if marriage_id.present? }
 #scope :メソッド名 -> (引数) { SQL文 }
 #if 引数.present?をつけることで、検索フォームに値がない場合は実行されない
end
