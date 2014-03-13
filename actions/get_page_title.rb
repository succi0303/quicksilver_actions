#!/usr/bin/env ruby
# encoding: utf-8

require 'open-uri'
require 'nokogiri'

# 
# == GetPageTitle
#
# Quicksilverの1stペインに入力しURLから
# 該当のページのタイトルを取得し、1stペインに書き戻す
#
# @auhor succi0303
class GetPageTitle

  # URLを受取り、該当するページのタイトルを返す
  #
  # @param [String] url タイトル取得対象のURL
  # @note HTMLの取得に失敗した場合、Quicksilverの1stペインにエラーメッセージを出力する
  def get_title(url)
    begin
      html = get_html_from_url(url)
    rescue
      msg = 'ページの取得に失敗しました'
      cmd = construct_command(msg)
      system cmd
    end

    title = get_title_from_html(html)
    cmd = construct_command(title)
    system cmd
  end

  private

  # シェル実行用のコマンドを組み立てる
  #
  # @param [String] string Quicksilverに出力する文字列
  # @return [String] シェル実行用のコマンド
  def construct_command(string)
    quoted_string = %Q("#{string}")
    cmd_before = 'echo'
    cmd_after = '| qs'
    cmd = [cmd_before, quoted_string, cmd_after]
    cmd.join(' ')
  end

  # 該当するURLのHTMLボディを取得する
  #
  # @param [String] url タイトル取得対象のURL
  # @return [String] 該当するURLのHTMLボディ
  def get_html_from_url(url)
    html = open(url).read
    return html
  end

  # HTMLからタイトルを取得する
  #
  # @param [String] HTMLボディ
  # @return [String] HTMLのtitle
  def get_title_from_html(html)
    page = Nokogiri::HTML(html)
    page.title
  end

end

if $0 == __FILE__
  
  url = ARGV[0]
  gpt = GetPageTitle.new
  gpt.get_title(url)

end
