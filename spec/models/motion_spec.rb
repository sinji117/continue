require 'rails_helper'

describe Motion do
  before do
    @motion = FactoryBot.build(:motion)
  end

  describe '運動記録の新規登録' do
    context '新規登録がうまくいくとき' do
      it "name,time,kcalが存在すれば登録できる" do
        @motion = FactoryBot.build(:motion)
        expect(@motion).to be_valid
      end
    end

    context '新規登録がうまくいかないとき' do
      it "nameが空だと登録できない" do
        @motion.name = ""
        @motion.valid?
        expect(@motion.errors.full_messages).to include("Name can't be blank")
      end
      it "timeが空では登録できない" do
        @motion.time = ""
        @motion.valid?
        expect(@motion.errors.full_messages).to include("Time can't be blank")
      end
      it "kcalが空では登録できない" do
        @motion.kcal = ""
        @motion.valid?
        expect(@motion.errors.full_messages).to include("Kcal can't be blank")
      end
      it "kcalが全角で入力されると登録できない" do
        @motion.kcal = "あああ"
        @motion.valid?
        expect(@motion.errors.full_messages).to include("Kcal is not a number")
      end
      it "timeが全角で入力されると登録できない" do
        @motion.time = "あああ"
        @motion.valid?
        expect(@motion.errors.full_messages).to include("Time is not a number")
      end
      it "kcalが半角英字で入力されると登録できない" do
        @motion.kcal = "aaa"
        @motion.valid?
        expect(@motion.errors.full_messages).to include("Kcal is not a number")
      end
      it "timeが半角英字で入力されると登録できない" do
        @motion.time = "aaa"
        @motion.valid?
        expect(@motion.errors.full_messages).to include("Time is not a number")
      end
    end
  end
end
