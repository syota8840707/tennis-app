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
#### - Ruby
#### - Ruby on Rails
#### - Javascript
#### - HTML/CSS
#### - Heroku
#### - GitHub
<br>
<br>  

# URL

[https://tennis--app.herokuapp.com/](https://tennis--app.herokuapp.com/)


# 利用方法  
## トップページ
#### ☆ トップページより新規登録・ログイン可能。
#### ☆ 「表示リスト」より一覧表を表示できる。
#### ☆ 非同期通信活用。

<p>
<img src="https://i.gyazo.com/e330f6f9f36cd7124502b4e98c9ff8a6.jpg" width=30%>
<img src="https://i.gyazo.com/48031387c190ecf4cb6aa0f16e757209.jpg" width=30%  heigh=70px>
<video alt="Video from Gyazo" width="30%" autoplay muted loop playsinline controls><source src="https://i.gyazo.com/f115c0d85482fc06c7c80cd7e534963e.mp4" type="video/mp4" /></video></a> 
</p>
  
## ユーザー登録画面
#### ☆ 新規登録画面・ログイン画面。

<p>
<img src="https://i.gyazo.com/b475b7ad3c7fa91ed79178f2ca9d041e.png" width=45%> 
</p>
 
## 投稿画面
#### ☆ ログインユーザーのみ投稿可能。
#### ☆ トップページと詳細ページより遷移が可能。
#### ☆ 全て記入して登録可能。
 
## 詳細画面
#### ☆ 一覧表より選択したコートの詳細画面が表示される。
#### ☆ 投稿者情報が上記に表示される。
#### ☆ 投稿者本人であれば、「MENU」クリックより編集・削除が可能。
#### ☆ 「MAP」クリックよりマップを表示する。


# 課題解決
#### 使用したいテニスコートを検索する際に検索回数を減らしたいと考え、一つのアプリにまとめることで解消できると考えました。
#### 共有する場を設けて、まだ知らないコートを知ることができる。

# 要件の洗い出し
#### - 容易にコートの情報を知り、保存できるようにしたい。
#### - テニス好きなユーザーと繋がりたい。
#### - 普段使っているコートの魅力を伝えたい。
#### - 使用したことのないコート魅力を知りたい。




# テーブル設計

## usersテーブル

| Column                      | Type        | Options                        |
| --------------------------- | ----------- | ------------------------------ |
| nickname                    | string      | null: false                    |
| email                       | string      | null: false                    |
| encrypted_password          | string      | null: false                    |
| tennis_year                 | integer     | null: false                    |
##Association
-has_many   :coats
-has_many   :comments

## coatsテーブル

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
## Association
-belongs_to :user
-has_many   :comment

## messagesテーブル

| Column                      | Type        | Options                        |
| --------------------------- | ----------- | ------------------------------ |
| messages                        | text        | null: false                    |
| user                        | references  | null: false, foreign_key: true |
| coat                        | references  | null: false, foreign_key: true |
###  Association

-belongs_to :user
-belongs_to :coat
