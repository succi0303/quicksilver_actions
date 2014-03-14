#!/usr/bin/env ruby
# encoding: utf-8

require_relative './lib_qs_actions/qs_actions'
require 'open-uri'
require 'nokogiri'

module QSActions

  # @auhor succi0303
  class GetPageTitle < ActionTemplate

    private

    # URLを受取り、該当するページのタイトルを返す
    #
    # @param [String] url タイトル取得対象のURL
    # @note HTMLの取得に失敗した場合、Quicksilverの1stペインにエラーメッセージを出力する
    def update_text(url_text)
      begin
        html = get_html_from_url(url_text)
      rescue
        'ページの取得に失敗しました'
      end

      get_title_from_html(html)
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

end

if $0 == __FILE__
  
  url_text = ARGV[0]
  gpt = QSActions::GetPageTitle.new
  cmd = gpt.execute_action(url_text)
  system cmd

end
