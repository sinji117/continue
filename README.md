## 🌐 App URL

### **https://continues.herokuapp.com/**

## 💬 Usage

`$ git clone https://github.com/sinji117/continue.git`

## :art: Character Design

<p align="center">
  <img src="https://i.gyazo.com/38e3dfcefe28bcb0c611b186da68a63d.png" width=70%>  
</p>　

📗 詳しい内容：Qiita
【Python+Flask】WebAPI を使った簡易書籍管理アプリ【Elasticsearch、Vue.js】
こちらに簡易書籍管理システムについての内容をまとめています。

📗 開発環境
Python
Flask
Elasticsearch
Vue.js
VSCode（Visual Studio Code）
📗 アプリ機能
1、書籍の登録
ISBN コードは、世界共通で図書を認識する為に記載される書籍の裏に書かれている番号です。

booksearch

2、書籍の検索
登録した書籍とマッチする検索結果が表示される

knsk

3、書籍の詳細表示
検索結果をクリックすると「openBD」から受け取った書籍情報が表示される

knskkk

4、一覧表示機能
これまでに登録した書籍をすべて表示させる機能です。

knskk

📗 全体的な仕組み
minibooksearch

📗 動作環境
Python（Flask） ＋ Elasticsearch 　内部で『openBD』を呼び出して動作しています。

Java1.8
Elasticsearch を動作させるのに必要（JRE ではなく JDK）
Elasticsearch6.3
2 つのプラグインをインストール
ICU Analysis
Japanese (Kuromoji) Analysis
http://localhost:9200 でアクセスできることを確認する
pip install elasticsearch
pip install Flask

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
