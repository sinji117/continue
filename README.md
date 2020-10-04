## 🌐 App URL

### **https://continues.herokuapp.com/**

## 💬 Usage

`$ git clone https://github.com/sinji117/continue.git`

## :art: Character Design

<p align="center">
  <img src="https://i.gyazo.com/38e3dfcefe28bcb0c611b186da68a63d.png" width=70%>  
</p>　

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
