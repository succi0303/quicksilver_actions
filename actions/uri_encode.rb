#!/usr/bin/env ruby
# encoding: utf-8

require 'uri'

# 
# == URIEncode
#
# Quicksilverの1stペインのテキストをURIエンコードし
# 1stペインに書き戻す
# 
# @author succi0303
class URIEncode

  # 引数のテキストをURIエンコードした後、シェル実行用のコマンドを作成し
  # systemコマンドで実行する。
  #
  # @param [String] word エンコード対象のテキスト
  def encode(word)
    encoded_word = uri_encode(word)
    cmd = construct_command(encoded_word)
    system cmd
  end

  private

  # シェル実行用のコマンドを組み立てる
  #
  # @param [String] word エンコード済みのテキスト
  # @return [String] シェル実行用のコマンド
  def construct_command(word)
    quoted_word = "'#{word}'"
    base_cmd_before = 'echo'
    base_cmd_after =  '| qs'
    cmd = [base_cmd_before, quoted_word, base_cmd_after]
    cmd.join(' ')
  end

  # URIエンコードする
  #
  # @param [String] word エンコード対象のテキスト
  # @return [String] エンコード済みテキスト
  def uri_encode(word)
    encoded_word = URI.encode(word).downcase
    return encoded_word
  end

end

if $0 == __FILE__

  word = ARGV[0]
  ue = URIEncode.new
  ue.encode(word)

end
