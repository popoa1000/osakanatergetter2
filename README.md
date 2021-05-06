# README
# テーブル設計

## userテーブル
| Column     | Type   | Options     |
| --------   | ------ | ----------- |
| email      | string | null: false |
| password   | string | null: false |
| nickname   | string | null: false |

### Association

- has_many :comments
- has_many :osakanas

## commentsテーブル

| Column    | Type      | Options     |
| --------  | ------    | ----------- |
| text      | text       | null: false |
| user      | references | null: false |
| osakanas  | references | null: false |

### Association

- belongs_to :users
- belongs_to :osakana

## osakanasテーブル

| Column         | Type      | Options     |
| --------       | ------    | ----------- |
| fish           | string    | null: false |
| map            | text      | null: false |
| tackle         | text      | null: false |
| tackle_details | text      | null:false  |
| image          |           | null: false |
| user           | reference | null: false |

### Association

- belong_to :users
- has_many :comments

## mapsテーブル

| Column         | Type      | Options     |
| --------       | ------    | ----------- |
| address        | string    | null: false |
| latitude       | float     | null: false |
| longitude      | float     | null: false |
| title          | text      | null: false |

### Association

- belong_to :osakana
- has_many :comments