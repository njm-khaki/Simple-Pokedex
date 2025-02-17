# Simple-Pokedex

Demo app using Dio mocking in Flutter

- [Simple-Pokedex](#simple-pokedex)
  - [概要](#概要)
  - [環境](#環境)
  - [環境構築・実行方法](#環境構築実行方法)
    - [Web向けリリース](#web向けリリース)
  - [資料](#資料)
    - [設計資料](#設計資料)

## 概要

- シンプルなポケモン図鑑の実装
- また、以下はサブ目的
  - FlutterアプリでHTTP通信を行うのにモックを用いたアプリの試作
  - また、状態管理など基本的な設計の見直し

## 環境

- とりあえず以下の環境で作業

||バージョン|
|--|--|
|OS|windows11|
|Flutter|3.29.0|
|Dart|3.7.0|
|Android Studio|version 2024.2|

## 環境構築・実行方法

- 以下のコマンドでクローン

> git clone https://github.com/njm-khaki/Flutter-Demo-Mock-App.git

- 以下のコマンドでパッケージを取得

```bash
cd flutter_demo_mock_app
flutter pub get
```

- 以下のコマンドで実行
  - その後、実行する端末を選択することで起動

```bash
flutter run
```

### Web向けリリース
- [Github.io](https://njm-khaki.github.io/Simple-Pokedex/)で公開している

- 以下のコマンドでWeb向けのリリースビルドを実施
  - `build/web`のファイルを`docs`へコピー
  - 作業完了後に`main`ブランチから`release`ブランチへマージすることで公開完了

> flutter build web --release --base-href /Simple-Pokedex/

## 資料

### 設計資料

- 以下に大まかな基本設計について記載
    - [flutterアプリ_基本設計](./documents/flutterアプリ_基本設計.md)