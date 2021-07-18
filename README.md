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
#### ☆ 登録の有無でユーザー名の表記が変わる。
#### ☆ トップページより新規登録・ログイン可能。
#### ☆ 「表示リスト」より一覧表を表示できる。
#### ☆ 非同期通信活用。

<p>
<img src="https://i.gyazo.com/e330f6f9f36cd7124502b4e98c9ff8a6.jpg" width=33% height=230px>
<img src="https://i.gyazo.com/48031387c190ecf4cb6aa0f16e757209.jpg" width=33%  height=230px>
<img src="https://user-images.githubusercontent.com/84270194/126053860-7513a6a7-c2a4-4554-b4fa-2b126db3bc70.gif" width=33% height=230px>
</p>
  
## ユーザー登録画面
#### ☆ 新規登録画面・ログイン画面。

<p>
<img src="https://user-images.githubusercontent.com/84270194/126056753-d57c1533-4464-446b-8d83-cd1bfa9bbd7e.gif" width=45%> 
<img src="https://i.gyazo.com/b475b7ad3c7fa91ed79178f2ca9d041e.png" width=45%> 
</p>
 
## 投稿画面
#### ☆ ログインユーザーのみ投稿可能。
#### ☆ トップページと詳細ページより遷移が可能。
#### ☆ 全て記入して登録可能。

<p>
<img src="" width=45%> 
</p>
 
## 詳細画面
#### ☆ 一覧表より選択したコートの詳細画面が表示される。
#### ☆ 投稿者情報が上記に表示される。
#### ☆ 投稿者本人であれば、「MENU」クリックより編集・削除が可能。
#### ☆ 「MAP」クリックよりマップを表示する。

<p>
<img src="https://user-images.githubusercontent.com/84270194/126056717-34b1cfea-01a1-4162-bec1-287d0e526a5a.gif" width=45%>
<img src="https://user-images.githubusercontent.com/84270194/126056737-10676ee7-82bd-4722-b291-867c960a8fac.gif" width=45%>
</p>

# 課題解決
#### 使用したいテニスコートを検索する際に検索回数を減らしたいと考え、一つのアプリにまとめることで解消できると考えました。
#### 共有する場を設けて、まだ知らないコートを知ることができる。

# 工夫したポイント
#### - レイアウトはシンプルに、少しスポーツカラーを入れました。
#### - テニス好きなユーザーと容易に繋がれるようにした。
#### - ユーザーだけが知っている投稿コートの魅力を他のユーザーにも伝えるために、<br>「おすすめポイント」欄を作成した。
#### - マップを設置して場所をわかりやすくした。

# 今後の実装予定
#### - AWSでEC2へのデプロイ、E3の導入。
#### - map機能をコート毎で登録できるようにする。
#### - 県別検索を追加する。
#### - 


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
