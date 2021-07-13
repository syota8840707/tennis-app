# 🎾Tennishare

## お勧めコートをshare!!しよう



# 概要
## このアプリではテニスプレイヤーがお勧めする
　　　テニスコートを共有するアプリです。

# 作成背景

# README

# テーブル設計

##usersテーブル

| Column                      | Type        | Options                        |
| --------------------------- | ----------- | ------------------------------ |
| nickname                    | string      | null: false                    |
| email                       | string      | null: false                    |
| encrypted_password          | string      | null: false                    |
| tennis_year                 | integer     | null: false                    |
##Association
-has_many   :coats
-has_many   :comments

##coatsテーブル

| Column                      | Type        | Options                        |
| --------------------------- | ----------- | ------------------------------ |
| name                        | string      | null: false                    |
| info                        | text        | null: false                    |
| start_time_id               | integer     | null: false                    |
| finish_time_id              | integer     | null: false                    |
| number_id                   | integer     | null: false                    |
| prefecture_id               | integer     | null: false                    |
| city                        | string      | null: false                    |
| address                     | string      | null: false                    |
| user                        | references  | null: false, foreign_key: true |
##Association
-belongs_to :user
-has_many   :comment

##messagesテーブル

| Column                      | Type        | Options                        |
| --------------------------- | ----------- | ------------------------------ |
| messages                        | text        | null: false                    |
| user                        | references  | null: false, foreign_key: true |
| coat                        | references  | null: false, foreign_key: true |
###  Association

-belongs_to :user
-belongs_to :coat
