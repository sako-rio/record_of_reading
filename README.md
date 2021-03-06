# 読書歴を管理するアプリ
- 購入したけど読んでない本
- 購入したい本
- 読み終わった本  
上記を管理する

## Requirements
ruby 2.3.1

rails 5.0.0.1

## 開発環境
Rubyのインストール
```shell
$ rbenv install 2.3.1
```

## Rubyのバージョン切り替え&確認
```shell
$ cd "path/to/this/project"
$ rbenv local 2.3.1
$ rbenv versions
```
## ローカルのRubyにBundlerをインストール
```shell
$ gem install bundler
```

## Gemインストール
```shell
$ cd path/to/rails/project
$ bundle install --path vendor/bundle
```

## mysqlのインストール
```shell
$ brew install mysql
$ mysql.sever start
```

## データベースの作成手順

  1. データベース作成

    ```shell
    $ bundle exec rake db:create
    ```
  2. テーブル作成

    ```shell
    $ bundle exec rake db:migrate
    ```
  3. テストデータの投入

    ```shell
    $ bundle exec rake db:testdata
    ```

## コードチェッカ

プルリクを出す前に下記のコマンドを実行し、コーディング規約に反していない事を確認して下さい。

- rubocop->rubyファイルのコードチェッカ コーディング規約とチェック対象となるファイルの指定情報は、.rubocop.ymlに記述

  ```shell
  $ bundle exec rubocop
  ```
- haml-lint->hamlファイルのコードチェッカ

  - views以下のhamlファイルをチェック

    ```shell
    $ bundle exec haml-lint app/views/**/*.haml
    ```

  - 特定のhamlファイルをチェック

    ```shell
    $ bundle exec haml-lint app/views/records/index.html.haml
    ```
