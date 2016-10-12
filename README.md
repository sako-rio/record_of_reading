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
