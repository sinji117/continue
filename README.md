## 📊 お困りじゃないですか？
# 1,日々の家計と体型を一括管理できます！
<h3 align="center">- PWA -</h3>

<p align="center">
  <img src="https://i.gyazo.com/38e3dfcefe28bcb0c611b186da68a63d.png" width=40%>
</p>

## 🌐 App URL

### **https://continues.herokuapp.com/**

## 💬 Usage

`$ git clone https://github.com/sinji117/continue.git`

## :art: Character Design

<p align="center">
  <img src="https://i.gyazo.com/38e3dfcefe28bcb0c611b186da68a63d.png" width=70%>  
</p>　

## 📊 環境開発
+ ruby
+ rails
+ VSCode（Visual Studio Code）




## 📊 アプリ機能
# 1,日々の家計と体型を一括管理できます！
<h3 align="center">- PWA -</h3>

<p align="center">
  <img src="https://i.gyazo.com/38e3dfcefe28bcb0c611b186da68a63d.png" width=40%>
</p>


# 2,使い方は簡単！日々、食べた物の登録だけ！
<h3 align="center2">- PWA -</h3>

<p align="center2">
  <img src="https://camo.githubusercontent.com/5f208e1e6cff696c967377811f2eaa39642f8b77/68747470733a2f2f692e6779617a6f2e636f6d2f38663733386135613838323034333462323261396663333237363561343262362e706e67" width=40%>
</p>

# 3,毎日、自分の設定した目標と戦いましょう
<h3 align="center">- PWA -</h3>

<p align="center">
  <img src="https://i.gyazo.com/38e3dfcefe28bcb0c611b186da68a63d.png" width=40%>
</p>

# 4,1週間単位、生涯成績が見れていつでも振り返る！
<h3 align="center">- PWA -</h3>

<p align="center">
  <img src="https://i.gyazo.com/38e3dfcefe28bcb0c611b186da68a63d.png" width=40%>
</p>


# ER図
https://drive.google.com/file/d/1jPXOCJZ_Z9wNFrYIVAXDYC2hP7av7Zzi/view?usp=sharing
# ページ遷移図
https://drive.google.com/file/d/1jPXOCJZ_Z9wNFrYIVAXDYC2hP7av7Zzi/view?usp=sharing





# テーブル設計

## users テーブル

| Column     | Type    | Options     |
| ---------- | ------- | ----------- |
| name       | string  | null: false |
| day_money  | integer | null: false |
| metabolism | string  | null: false |

### Association

- has_many :foods

## foods テーブル

| Column     | Type      | Options          |
| ---------- | --------- | ---------------- |
| user       | reference | foreign_key:true |
| name       | string    | null: false      |
| kcal       | integer   | null: false      |
| money      | integer   | null: false      |
| note       | string    |                  |
| start_time | datetime  | null: false      |

### Association

- belongs_to :user
