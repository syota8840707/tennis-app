# 🎾 Tennishare

##  お勧めコートを **Share!!** しましょう ♪ 
  
[![Image from Gyazo](https://i.gyazo.com/82cf2be4ded7c54cba56f67fbcccd92a.jpg)](https://gyazo.com/82cf2be4ded7c54cba56f67fbcccd92a)
<br>
<br>
# アプリケーション概要
###  このアプリではテニスプレイヤーがお勧めするテニスコートを共有するアプリです。
  楽しさは一人よりも共有した方が倍増するであろう。<br>
  普段使っているテニスコートをこのアプリ内で共有してより楽しんでいこう！
<br>
<br>
# 使用言語・技術
#### ・ Ruby
#### ・ Ruby on Rails
#### ・ Javascript
#### ・ HTML/CSS
#### ・ Heroku
#### ・ GitHub
<br>
<br>  
# URL
<br>
 https://tennis--app.herokuapp.com/
<br>

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
