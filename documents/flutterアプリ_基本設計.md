# flutterアプリ 基本設計

Flutterアプリの基本設計を簡単に示す

- [flutterアプリ 基本設計](#flutterアプリ-基本設計)
  - [設計思想](#設計思想)
    - [有限オートマトン・ステートマシン](#有限オートマトンステートマシン)
    - [クラス図](#クラス図)
  - [参考情報](#参考情報)

## 設計思想

### 有限オートマトン・ステートマシン
- 有限個の状態と動作を数学的に抽象化された数学的なモデル

- 例えば以下のような振る舞いをする画面について考える
  - 初期化中: 画面表示時にデータの読み込みを行う
  - 読み込み済: 読み込んだデータを画面に表示する
  - リロード中: データを再読み込みを行う
  - ※エラーケースを考慮すると面倒なので省略

- 上記をステートマシンに落とし込むと以下の図となる

![state machine image](images/state_machine.png)

### クラス図

- 詳細については記載中

![alt text](images/class_image.png)

## 参考情報

- [[FlutterKaigi2024]ステートマシンで実現する高品質なFlutterアプリ開発](https://speakerdeck.com/teamlab/flutterkaigi2024-sutetomasindeshi-xian-surugao-pin-zhi-naflutterapurikai-fa)