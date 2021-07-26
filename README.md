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

# URL

[https://tennis--app.herokuapp.com/](https://tennis--app.herokuapp.com/)
<br>
<br>

# 利用方法  
## トップページ
#### ☆ 登録の有無でユーザー名の表記が変わる。
#### ☆ トップページより新規登録・ログイン可能。
#### ☆ 「表示リスト」より一覧表を表示できる。
#### ☆ 非同期通信活用。

<p>
<img src="https://i.gyazo.com/e330f6f9f36cd7124502b4e98c9ff8a6.jpg" width=32% height=230px>
<img src="https://i.gyazo.com/48031387c190ecf4cb6aa0f16e757209.jpg" width=32%  height=230px>
<img src="https://user-images.githubusercontent.com/84270194/126058431-f405d8f5-0f34-4b53-b47f-48bdbe5ed80c.gif" width=32% height=230px>
</p>
  
## ユーザー登録画面
#### ☆ 新規登録画面・ログイン画面。

<p>
<img src="https://user-images.githubusercontent.com/84270194/126056753-d57c1533-4464-446b-8d83-cd1bfa9bbd7e.gif" width=45%> 
<img src="https://i.gyazo.com/7e8bc91ea29ed1ea9a631c38af026a73.png" width=45%> 
</p>
 
## 投稿画面
#### ☆ ログインユーザーのみ投稿可能。
#### ☆ トップページと詳細ページより遷移が可能。
#### ☆ 全て記入して登録可能。

<p>
<img src="https://user-images.githubusercontent.com/84270194/126056969-f178cd1b-5fd2-4e18-b698-00c958fa3bf1.gif" width=60%> 
</p>
 
## 詳細画面
#### ☆ 一覧表より選択したコートの詳細画面が表示される。
#### ☆ 投稿者情報が上記に表示される。
#### ☆ 投稿者本人であれば、「MENU」クリックより編集・削除が可能。
#### ☆ ログインユーザーはコメント欄に記入できる。
#### ☆ 「MAP」クリックよりマップを表示する。

<p>
<img src="https://user-images.githubusercontent.com/84270194/126855198-78f49ab7-43d5-4c42-8df8-c12fe2c84e71.gif" width=45%>
<img src="https://user-images.githubusercontent.com/84270194/126056737-10676ee7-82bd-4722-b291-867c960a8fac.gif" width=45%>
</p>

<br>
<br>

# 課題解決
#### 使用したいテニスコートを検索する際に検索回数を減らしたいと考え、一つのアプリにまとめることで解消できると考えました。
#### 共有する場を設けて、まだ知らないコートを知ることができる。

<br>
<br>

# 工夫したポイント
#### - レイアウトはシンプルに、少しスポーツカラーを入れました。
#### - テニス好きなユーザーとコメント欄などを通じて容易に繋がれるようにした。
#### - ユーザーだけが知っている投稿コートの魅力を他のユーザーにも伝えるために、<br>「おすすめポイント」欄を作成した。
#### - マップを設置して場所をわかりやすくした。

<br>
<br>

# 課題や今後の実装予定
#### - AWSでEC2へのデプロイ。
#### - map機能をコート毎で登録できるようにする。
#### - 県別検索を追加する。
#### - 詳細はIssuesに記載している。

<br>
<br>

# 使用言語・技術
#### - Ruby
#### - Ruby on Rails
#### - Javascript
#### - HTML/CSS
#### - Heroku
#### - GitHub
#### - AWS(S3)

<br>
<br>

# テーブル設計

## usersテーブル

| Column                      | Type        | Options                        |
| --------------------------- | ----------- | ------------------------------ |
| nickname                    | string      | null: false                    |
| email                       | string      | null: false                    |
| encrypted_password          | string      | null: false                    |
| tennis_year                 | integer     | null: false                    |
## Association
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
