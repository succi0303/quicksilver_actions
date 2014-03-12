#!/usr/bin/env ruby
# encoding: utf-8

require 'cgi'

# 
# == HTMLEscape
#
# Quicksilverの1stペインのテキストをHTMLエスケープし
# 1stペインに書き戻す
#
# @author succi0303
class HTMLEscape

  # 引数のテキストをHTMLエスケープした後、シェル実行用のコマンドを作成し
  # systemコマンドで実行する
  #
  # @param [String] word エスケープ対象のテキスト
  def escape(word)
    escaped_word = html_escape(word)
    cmd = construct_command(escaped_word)
    system cmd
  end

  private

  # シェル実行用のコマンドを組み立てる
  #
  # @param [String] word エスケープ済みのテキスト
  # @return [String] シェル実行用のコマンド
  def construct_command(word)
    quoted_word = %Q("#{word}")
    cmd_before = "echo"
    cmd_after = "| qs"
    cmd = [cmd_before, quoted_word, cmd_after]
    cmd.join(' ')
  end

  # HTMLエスケープする
  #
  # @param [String] word エスケープ対象のテキスト
  # @return [String] エスケープ済みテキスト
  def html_escape(word)
    escaped_word = CGI.escapeHTML(word)
    escaped_word
  end

end

if $0 == __FILE__

  word = ARGV[0]
  he = HTMLEscape.new
  he.escape(word)

end
