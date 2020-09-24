FactoryBot.define do
  factory :user do
    nickname {Faker::Name.last_name}
    sex_id {1}
    first_name {"山田"}
    last_name {"太郎"}
    first_name_kana {"ヤマダ"}
    last_name_kana {"タロウ"}
    email {Faker::Internet.free_email}
    # password = Faker::Internet.password(min_length: 8)
    password {password}
    password_confirmation {password}
    birthday {"2000-01-01"}
    likesports_id{1}
    liketeam_id{1}
    watching_date{"2020-01-01"}
    prefectures_id{1}
    job_id{1}
    marriage_id{1}
  end
end
