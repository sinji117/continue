require 'rails_helper'
describe User do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録がうまくいくとき' do
      it "nicknameとemail、passwordとpassword_confirmation,family_name,first_name,family_name_kana,first_name_kana, birth_dayが存在すれば登録できる" do
        @user = FactoryBot.build(:user)
        expect(@user).to be_valid
      end
      it "パスワードは6文字以上で半角英数字混合であれば登録できる" do
        @user.password = "000abc"
        @user.password_confirmation = "000abc"
        expect(@user).to be_valid
      end
    end

    context '新規登録がうまくいかないとき' do
      it "nameが空だと登録できない" do
        @user.name = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Name can't be blank")
      end
      it "emailが空では登録できない" do
        @user.email = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end
      it "重複したemailが存在する場合登録できない" do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include("Email has already been taken")
      end
      it "emailに@が存在しない場合登録できない" do
        @user.email = "123456abc"
        @user.valid?
        expect(@user.errors.full_messages).to include("Email is invalid")
      end
      it "passwordが空では登録できない" do
        @user.password = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank", "Password confirmation doesn't match Password")
      end
      it "passwordが5文字以下であれば登録できない" do
        @user.password = "aaaaa"
        @user.password_confirmation = "aaaaa"
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
      end
      it "パスワードは半角英数字混合でなければ登録できない" do
        @user.password = "aaaaaa"
        @user.password_confirmation = "aaaaaa"
        @user.valid?
       expect(@user.errors.full_messages).to include("Password is invalid")
      end
      it "パスワードは確認用を含めて2回入力しなければ登録できない" do
        @user.password_confirmation = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
      it "day_moneyが空では登録できない" do
        @user.day_money = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Day money can't be blank", "Day money is not a number")
      end
      it "metabolismが空では登録できない" do
        @user.metabolism = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Metabolism can't be blank", "Metabolism is not a number")
      end
      it "day_moneyが半角英字で入力されると登録できない" do
        @user.day_money = "aaa"
        @user.valid?
        expect(@user.errors.full_messages).to include("Day money is not a number")
      end
      it "metabolismが半角英字で入力されると登録できない" do
        @user.metabolism = "aaa"
        @user.valid?
        expect(@user.errors.full_messages).to include("Metabolism is not a number")
      end
      it "day_moneyが全角で入力されると登録できない" do
        @user.day_money = "あああ"
        @user.valid?
        expect(@user.errors.full_messages).to include("Day money is not a number")
      end
      it "metabolismが全角で入力されると登録できない" do
        @user.metabolism = "あああ"
        @user.valid?
        expect(@user.errors.full_messages).to include("Metabolism is not a number")
      end
    end
  end
end