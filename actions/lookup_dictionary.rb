#!usr/bin/env ruby
# encoding: utf-8

# # lookup dictionary
#
# QuickSilverの1stペインに入力したテキストの意味を
# Macの内蔵辞書で調べるQuickSilverのアクション
#
# ## インストール
#
# 本ファイルを`~/Library/Application\ Support/Quicksilver/Actions`
# ディレクトリにコピーする。(Actionsディレクトリが存在しない場合は
# Actionsディレクトリを作成する)

# 検索ワードをURIエンコードするために'uri'を使用する
require 'uri'

class LookupDict

  def initialize
    @base_cmd = 'open dict://'
  end

  def lookup(word)
    encoded_word = url_encode(word)
    cmd = construct_command(encoded_word)
    system cmd
  end

  def construct_command(word)
    cmd = [@base_cmd, word]
    cmd.join('')
  end

  def url_encode(word)
    encoded_word = URI.encode(word).downcase
    return encoded_word
  end

end

if $0 == __FILE__

  word = ARGV[0]

  ld = LookupDict.new
  ld.lookup(word)

end
