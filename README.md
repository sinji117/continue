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

| Column | Type      | Options          |
| ------ | --------- | ---------------- |
| user   | reference | foreign_key:true |
| name   | string    | null: false      |
| kcal   | integer   | null: false      |
| money  | integer   | null: false      |
| note   | string    |                  |

### Association

- belongs_to :user
