# テーブル設計

## users テーブル

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| email      | string | null: false |
| password   | string | null: false |
| name       | string | null: false |
| profile    | string | null: false |
| occupation | string | null: false |
| position   | string | null: false |

### Association
 - has_many :prototypes
 - has_many :comments

## comments テーブル

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| text       | string | null: false |
| user       | string | null: false |
| prototype  | string | null: false |

### Association
 - belong_to :users
 - belong_to :prototypes

## prototypes テーブル

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| title      | string | null: false |
| catch_copy | string | null: false |
| concept    | string | null: false |
| image      | string | null: false |
| user       | string | null: false |

### Association
 - belongs_to :users
 - has_many :comments
