require 'rails_helper'
describe Food do
  before do
    @food = FactoryBot.build(:food)
  end

  describe 'ユーザー新規登録' do
    context '新規登録がうまくいくとき' do
      it "name,kcal,money,noteが存在すれば登録できる" do
        @food = FactoryBot.build(:food)
        expect(@food).to be_valid
      end
      it "noteが空でも登録できる" do
        @food.note = ""
        expect(@food).to be_valid
      end
    end

    context '新規登録がうまくいかないとき' do
      it "nameが空だと登録できない" do
        @food.name = ""
        @food.valid?
        expect(@food.errors.full_messages).to include("Name can't be blank")
      end
      it "kcalが空では登録できない" do
        @food.kcal = ""
        @food.valid?
        expect(@food.errors.full_messages).to include("Kcal can't be blank")
      end
      it "moneyが空では登録できない" do
        @food.money = ""
        @food.valid?
        expect(@food.errors.full_messages).to include("Money can't be blank", "Money is not a number")
      end
      it "kcalが全角で入力されると登録できない" do
        @food.kcal = "あああ"
        @food.valid?
        expect(@food.errors.full_messages).to include("Kcal is not a number")
      end
      it "moneyが全角で入力されると登録できない" do
        @food.money = "あああ"
        @food.valid?
        expect(@food.errors.full_messages).to include("Money is not a number")
      end
      it "kcalが半角英字で入力されると登録できない" do
        @food.kcal = "aaa"
        @food.valid?
        expect(@food.errors.full_messages).to include("Kcal is not a number")
      end
      it "moneyが半角英字で入力されると登録できない" do
        @food.money = "aaa"
        @food.valid?
        expect(@food.errors.full_messages).to include("Money is not a number")
      end
    end
  end
end
