# README

# アプリ名
- osakanatergetter

# 概要
- 釣りにおける釣果情報の投稿サイト

# 本番環境
- デプロイ先
- heroku
- https://osakanatergetter.herokuapp.com/

- テストアカウント
- kokoa

- アカウントパスワード
- kokoa100

# 作成背景
- 現在様々な釣果情報サイトはありますが、シンプルで、より仕掛けの情報に特化した機能のあるサイトが欲しかったため。

# 技術使用
- ruby,JavaScript,Mysql,Ruby on Rails

#　課題・今後実装したい機能
- ユーザーがピンを立て、そこに釣果情報を追加できるようにしたい。情報の項目も、タイドグラフと連動させたり、付近の駅や駐車場の情報も追加できるようにしたい。


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