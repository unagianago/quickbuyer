# テーブル設計

## users テーブル

| Column             | Type   | Options                     |
| ------------------ | ------ | --------------------------- |
| nickname           | string | null: false                 |
| email              | string | null: false, unique: true   |
| encrypted_password | string | null: false                 |

### Association

- has_many :favorites

## favorites テーブル

| Column             | Type       | Options                         |
| ------------------ | ---------- | ------------------------------- |
| user               | references | null: false, foreign_key: true  |
| dealer             | references | null: false, foreign_key: true  |

### Association

- belongs_to :user
- belongs_to :dealer

## dealers テーブル

| Column             | Type       | Options                     |
| ------------------ | ---------- | --------------------------- |
| buyer_id           | integer    | null: false                 |
| category_id        | integer    | null: false                 |

### Association

- has_many :favorites