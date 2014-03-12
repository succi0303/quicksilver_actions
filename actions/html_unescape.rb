#!/usr/bin/env ruby
# encoding: utf-8

require 'cgi'

# 
# == HTMLUnescape
#
# Quicksilverの1stペインのテキストをHTMLアンエスケープし
# 1stペインに書き戻す
#
# @author succi0303
class HTMLUnescape

  # 引数のテキストをHTMLアンエスケープした後、シェル実行用のコマンドを作成し
  # systemコマンドで実行する
  #
  # @param [String] word アンエスケープ対象のテキスト
  def unescape(word)
    unescape_word = html_unescape(word)
    cmd = construct_command(unescape_word)
    system cmd
  end

  private

  # シェル実行用のコマンドを組み立てる
  #
  # @param [String] word アンエスケープ済みのテキスト
  # @return [String] シェル実行用のコマンド
  def construct_command(word)
    quoted_word = %Q("#{word}")
    cmd_before = "echo"
    cmd_after = "| qs"
    cmd = [cmd_before, quoted_word, cmd_after]
    cmd.join(' ')
  end

  # HTMLアンエスケープする
  #
  # @param [String] word アンエスケープ対象のテキスト
  # @return [String] アンエスケープ済みテキスト
  def html_unescape(word)
    unescaped_word = CGI.unescapeHTML(word)
    return unescaped_word
  end

end

if $0 == __FILE__

  word = ARGV[0]
  hu = HTMLUnescape.new
  hu.unescape(word)

end
