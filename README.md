# QuickSilver Actions

[Quicksilver](http://qsapp.com)のアクションとして使用できるRuby製のスクリプト群です。

### 動作環境

- OSX Mavericks、Quicksilver v1.1.3(4007)で動作を確認しています。

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

インストールが完了すると、Quicksilverに新しいアクションが追加されます。追加されるアクションは以下のとおりです。

基本的な使い方は、1stペインに任意のテキスト、2ndペインに実行したいアクションを入力してQuicksilverを実行する形式です。

- get\_page\_title
- html\_escape
- html\_unescape
- lookup\_dictionary
- paren\_double\_kakko
- paren\_kakko
- paren\_parenthesis
- paren\_quote
- uri\_decode
- uri\_encode

### get\_page\_title

指定したURLからウェブページのページタイトルを取得して1stペインに書き戻す。

1stペインには、任意のウェブページのURLを入力する。

### html\_escape

1stペインのテキストをHTMLエスケープして1stペインに書き戻す。

### html\_unescape

1stペインのテキストをHTMLアンエスケープして1stペインに書き戻す。

### lookup\_dictionary

指定した語句について、Macの内蔵辞書を起動して意味を調べる。

1stペインには意味を調べたい語句を入力する。

### paren\_double\_kakko

1stペインのテキストを二重鍵括弧(『』)で囲んで1stペインに書き戻す。

### paren\_kakko

1stペインのテキストを鍵括弧(「」)で囲んで1stペインに書き戻す。

### paren\_parenthesis

1stペインのテキストを括弧(())で囲んで1stペインに書き戻す。

### paren\_quote

1stペインのテキストをシングルクォーテーションで囲んで1stペインに書き戻す。

### uri\_decode

1stペインのテキストをURIデコードして1stペインに書き戻す。

### uri\_encode

1stペインのテキストをURIエンコードして1stペインに書き戻す。
