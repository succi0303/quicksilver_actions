#!/usr/bin/env ruby
# encoding: utf-8

require 'uri'

# 
# == URIDecode
#
# Quicksilverの1stペインのテキストをURIデコードし
# 1stペインに書き戻す。
#
# @author succi0303
class URIDecode

  # 引数のテキストをURIデコードした後、シェル実行用のコマンドを作成し
  # systemコマンドで実行する
  #
  # @param [String] word デコード対象のテキスト
  def decode(word)
    decoded_word = uri_decode(word)
    cmd = construct_command(decoded_word)
    system cmd
  end

  private

  # シェル実行用のコマンドを組み立てる
  #
  # @param [String] word デコード済みのテキスト
  # @return [String] シェル実行用のコマンド
  def construct_command(word)
    quoted_word = "'#{word}'"
    base_cmd_before = 'echo'
    base_cmd_after = '| qs'
    cmd = [base_cmd_before, quoted_word, base_cmd_after]
    cmd.join(' ')
  end

  # URIデコードする
  #
  # @param [String] word デコード対象のテキスト
  # @return [String] デコード済みテキスト
  def uri_decode(word)
    decoded_word = URI.decode(word).downcase
    return decoded_word
  end
end

if $0 == __FILE__

  word = ARGV[0]
  ue = URIDecode.new
  ue.decode(word)

end
