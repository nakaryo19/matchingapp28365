require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#create' do
    before do
      @user = FactoryBot.build(:user)
    end
    context 'ユーザー登録できる場合' do
      it "全てが入力されている場合登録できること" do
       expect(@user).to be_valid
      end

      it "パスワードが6文字以上であれば登録できること" do
        @user.password = "123456"
        @user.password_confirmation = "123456"
        expect(@user).to be_valid
      end
      
      it "パスワードが7文字以上で、英数字の組み合わせであれば登録できること" do
        @user.password ="abcd123"
        @user.password_confirmation ="abcd123"
        @user.valid?
        expect(@user).to be_valid
      end
    end

    context 'ユーザー登録できない場合' do
      it "nicknameが空では登録できないこと" do
        @user.nickname = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end

      it "Eメールが空では登録できないこと" do
        @user.email = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end

      it "重複したEメールが存在する場合登録できないこと" do
        @user.save
        another_user = FactoryBot.build(:user, email: @user.email)
        another_user.valid?
        expect(another_user.errors.full_messages).to include("Email has already been taken")
      end

      it '@がないと登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end

      it "パスワードが空では登録できないこと" do
        @user.password = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end

      it "パスワードが存在してもpassword_confirmationが空では登録できないこと" do
        @user.password_confirmation = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end

      it "パスワードが5文字以下であれば登録できないこと" do
        @user.password = "123456"
        @user.password_confirmation = "12345"
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end

      it"苗字が空では登録できないこと" do
        @user.first_name = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("First name can't be blank", "First name is invalid")
      end
    
      it"名前が空では登録できないこと" do
        @user.last_name = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Last name can't be blank", "Last name is invalid")
      end
    
      it"苗字カナが空では登録できないこと" do
        @user.first_name_kana = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("First name kana can't be blank", "First name kana is invalid")
      end
    
      it '苗字カナがカタカナで返ること' do
        @user.first_name_kana = "kana"
        @user.valid?
        expect(@user.errors.full_messages).to include("First name kana is invalid")
      end

      it"名前カナが空では登録できないこと" do
        @user.last_name_kana = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Last name kana can't be blank", "Last name kana is invalid")
      end

      it '名前カナがカタカナで返ること' do
        @user.last_name_kana = "kana"
        @user.valid?
        expect(@user.errors.full_messages).to include("Last name kana is invalid")
      end
    
      it"生年月日が空では登録できないこと" do
        @user.birthday = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Birthday can't be blank")
      end

      it "画像がない場合は無効です" do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Image can't be blank")
      end

      it"好きなスポーツが空では登録できないこと" do
        @user.likesports_id = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Likesports can't be blank")
      end

      it"好きなチームが空では登録できないこと" do
        @user.liketeam_id = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Liketeam can't be blank")
      end

      it"観戦希望日が空では登録できないこと" do
        @user.watching_date = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Watching date can't be blank")
      end

      it"居住地が空では登録できないこと" do
        @user.prefectures_id = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Prefectures can't be blank")
      end

      it"職業が空では登録できないこと" do
        @user.job_id = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Job can't be blank")
      end

      it"結婚の有無が空では登録できないこと" do
        @user.marriage_id = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Marriage can't be blank")
      end
    end
  end
end
