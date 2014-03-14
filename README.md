# QuickSilver Actions

[Quicksilver](http://qsapp.com)のアクションとして使用できるRuby製のスクリプト群です。

## インストール

`actions`ディレクトリ以下のファイル(ディレクトリを含む)を、`~/Library/Application\ Support/Quicksilver/Actions/`のディレクトリにコピーして、Quicksilverを再起動するとQuicksilverのアクションとして使用できるようになります。

プロジェクトルートで`rake install`を実行すると、必要なシンボリックリンクを作成しますので、その後Quicksilverを再起動するとアクションが利用可能になります。

### Command Line Toolのインストールについて

スクリプトの大半が「Command Line Tool」プラグインを使用しています。「Command Line Tool」は標準出力を受け取って、Quicksilverの1stペインに出力するQuicksilverのプラグインツールです。

Command Line Toolをインストールするには、Quicksilverの環境設定で、「plugin」タブにて「Command Line Tool」をインストールし、その後、「Preference」タブの「Command Line Tool」サイドバーの中に表示される「install」ボタンをクリックします。

ターミナル上で以下のコマンドを実行し、

```bash
$ echo "hello, world" | qs
```

Quicksilverの1stペインに「hello, world」が表示されればインストールが完了しています。

## アクション

インストールが完了すると、Quicksilverのアクションが追加されます。Quicksilverの1stペインにテキストを入力し、2ndペインで実行したいアクションを選択します。利用できるアクションは以下の通りです。

- get\_page\_title - 指定したURLのウェブページのタイトルを取得する
- html\_escape - HTMLエスケープを実行する
- html\_unescape - HTMLアンエスケープを実行する
- lookup\_dictionary - Macの内蔵辞書で意味を調べる
- paren\_double\_kakko - 二重括弧(『』)で囲む
- paren\_kakko - 括弧(「」)で囲む
- paren\_quote - シングルクォーテーションで囲む
- uri\_decode - URIデコードを実行する
- uri\_encode - URIエンコードを実行する

など

