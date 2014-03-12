# QuickSilver Actions

[Quicksilver](http://qsapp.com)のアクションとして使用するRuby製のスクリプトです。

- lookup\_dictionary - 1stペインに入力したテキストをMacの内蔵辞書で調べる
- uri\_encode - 1stペインに入力したテキストをURIエンコードする

など

`actions`ディレクトリ以下のRubyスクリプトを、`~/Library/Application\ Support/Quicksilver/Actions/`のディレクトリにコピーして、Quicksilverを再起動するとQuicksilverのアクションとして使用できるようになります。(プロジェクトルートで`rake install`を実行するファイルのコピーを実行できます。)

### Command Line Toolのインストールについて

スクリプトの大半が「Command Line Tool」プラグインを使用しています。「Command Line Tool」は標準出力を受け取って、Quicksilverの1stペインに出力するQuicksilverのプラグインツールです。

Command Line Toolをインストールするには、Quicksilverの環境設定で、「plugin」タブにて「Command Line Tool」をインストールし、その後、「Preference」タブの「Command Line Tool」サイドバーの中に表示される「install」ボタンをクリックします。

ターミナル上で以下のコマンドを実行し、

```bash
$ echo "hello, world" | qs
```

Quicksilverの1stペインに「hello, world」が表示されればインストールが完了しています。
