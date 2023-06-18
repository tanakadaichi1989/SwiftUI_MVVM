# SwiftUI_MVVM
SwiftUI と MVVM を題材に、メンテナンス・機能を拡張しやすいコードの書き方を考える

## 開発するアプリ
### 機能
- とある鉄道会社のとある路線の駅を一覧で表示する
- 駅番号・駅名（日本語）・駅名（英語）を表示する

### 画面数
- 1つのみ

### 画面イメージ
<img src="https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/199441/a77de73a-f636-41c8-b54f-c7230d8d14b3.png" width=300px>

## ファイル
|ファイル名|内容|備考|
|---|---|---|
|Station_Kobe.json|駅に関する情報を記録||
|JSONLoader.swift|JSON ファイルからデータを取得・解析|SwiftUI チュートリアルで JSON ファイルからデータを取得・解析するコードを流用した|
|Station.swift|データモデル（駅）を定義||
|Line.swift|路線に関する情報を列挙型で定義|神戸線のラインカラーは青|
|StationViewModel.swift|JSON ファイルから取得したデータを画面に渡す||
|KobeLineApp.swift|アプリを実行すると、まず実行する（エントリーポイント）||
|ContentView.swift|アプリの画面を定義||
|StationNumberView.swift|駅番号に関するビューを定義||
|StationView.swift|駅名に関するビューを定義||

## クラス図
![download](https://github.com/tanakadaichi1989/SwiftUI_MVVM/assets/26732186/40ec1b3a-e7db-4471-af19-9bfd50396c83)

### クラス図を観察するとわかること
矢印 （→） の方向が一方方向であること
- `JSONLoader` は `StationViewModel` のことを知らない
- `StationViewModel` は `KobeLineApp` のことを知らない ... 以下同様

### 考えること
1. 現在は JSON ファイルからデータを取得し、解析している。データの取得先をデータベースに変更する際に発生する問題はあるか
1. 現在は 神戸線のみ JSON ファイルからデータを取得している。仮に、宝塚線・京都線のデータも表示したいとする。その拡張にその変更に耐えられるか

### 現時点での反省点
- アプリの名前は `KobeLineApp` にしない方が良かった。理由：今後、宝塚線・京都線のデータも表示するかもしれないから

## 参考資料
### SwiftUI チュートリアル
https://developer.apple.com/tutorials/swiftui

### 阪急電鉄
https://www.hankyu.co.jp/

### Qiita
https://qiita.com/tanakadaichi_1989/items/bf36fc12a3541877cc78


