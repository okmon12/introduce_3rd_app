# README
## user テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| name               | string | null: false               |
| email              | string | null: false, unique: true |
| nickname           | string | null: false               |
| encrypted_password | string | null: false               |


### Association
- has_many :comments


## comment テーブル

| Column                  | Type       | Options                           |
| ----------------------  | -----------| ----------------------------------|
| birthdate               | date       | null: false                       |
| strengths               | text       | null: false                       |
| weaknesses              | text       | null: false                       |
| message                 | text       | null: false                       |
| user                    | references | null: false, foreign_key: true    |

### Association
- belongs_to :user
