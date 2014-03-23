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

インストールが完了すると、Quicksilverのアクションが追加されます。

Quicksilverの1stペインにテキスト、2ndペインに実行するアクションを入力します。

利用できるアクションは以下の通りです。

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

指定したURLのウェブページのページタイトルを取得する

### html\_escape

対象のテキストをHTMLエスケープする

### html\_unescape

対象のテキストをHTMLアンエスケープする

### lookup\_dictionary

対象のテキストについてMacの内蔵辞書で意味を調べる

### paren\_double\_kakko

対象のテキストを二重鍵括弧(『』)で囲む

### paren\_kakko

対象のテキストを鍵括弧(「」)で囲む

### paren\_parenthesis

対象のテキストを括弧()で囲む

### paren\_quote

対象のテキストをシングルクォーテーションで囲む

### uri\_decode

対象のテキストをURIデコードする

### uri\_encode

対象のテキストをURIエンコードする
