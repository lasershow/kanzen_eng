## 目的
プレイヤーを設置、英文を表示、一度再生したら再生数をカウント、終わったら英文表示のリピーティングへ

```
AkihihroNakaonoMacBook-Pro:kaizen_eng akihiro$ git branch
  master
* sample-audio-1
```

`howler.js`

## インストールをrailsに

Several options to get up and running:

Clone the repo: git clone https://github.com/goldfire/howler.js.git
Install with npm: npm install howler
Install with Yarn: yarn add howler
Install with Bower: bower install howler
Hosted CDN: cdnjs jsDelivr

`どの方法が良いのか調査`

rails5のjs調査

http://guides.rubyonrails.org/
railsガイド5.1.4

rails react webpack 変更点確認
https://qiita.com/ryohashimoto/items/a8ba7bb8d6f340894188

- 既存アプリにはコマンド打てばインストールされる（なんと便利な）
- yarnはデフォで入っている

`そもそもnpm webpack yarn`
https://qiita.com/ryohashimoto/items/a8ba7bb8d6f340894188

以下引用

---

## Yarn (jɑːn - [やよ]ーん) とは何か？

https://github.com/yarnpkg/yarn

* JSのパッケージマネージャ。
   * `npm` のbetterな代替品という感じか。
   * Rubyでいう、 `bundler` みたいなものです。
      * プロジェクトローカルなコマンドインストールも兼ねていて、 `bundle exec ~~~` が `yarn run ~~~` に相当するみたいな感じ。
   * 依存性管理以外は基本やらないので、パッケージングとかは `webpack` とか使ってください。
* 並列DL、依存性の正確で再現可能な記録と計算、パッケージの破損チェックがサポートされている。

## Webpack とは何か？

https://webpack.github.io/

* なんかWeb系のプロジェクトのモジュールを1ファイルに固めてくれたりするビルドツール。（Cでいうリンカみたいな）
   * よくある、依存しているライブラリと、自プロジェクトの複数のJSを1ファイルにまとめる、みたいな用途で特に大した設定もせず使えるので、便利だと思われます。
      * 1ファイルではなく、論理的なグルーピングにくっつけるといったのも可能。
   * JS以外も扱えるらしい。
* `npm install -g webpack` でインストールできますが、今回はYarn経由でプロジェクト内にインストールします。

引用終わり

---

## yarn
Yarnはコードのためのパッケージマネージャーです。 これにより、世界中の開発者とコードの使用と共有を可能にしてくれます。 Yarnはこれを迅速且つ安全に、そして確実に行ってくれるため、心配することは何もありません。


https://yarnpkg.com/ja/

### yarn インストール

https://yarnpkg.com/ja/docs/install

### yarn 使い方
https://yarnpkg.com/ja/docs/usage

### yarn add howler

package.jsonに追加

```
{
  "name": "kaizen_eng",
  "private": true,
  "dependencies": {
    "howler": "^2.0.7"
  }
}
```
