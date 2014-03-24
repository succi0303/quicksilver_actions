#!/usr/bin/env ruby
# encoding: utf-8

require_relative './lib_qs_actions/qs_actions'
require 'English'
require 'open-uri'
require 'nokogiri'

module QSActions

  # @auhor succi0303
  class GetPageTitle < ReturnTextToQuicksilver

    private

    # URLを受取り、該当するページのタイトルを返す
    #
    # @param [String] url タイトル取得対象のURL
    # @note HTMLの取得に失敗した場合、Quicksilverの1stペインにエラーメッセージを出力する
    def edit_text(text)
      begin
        html = get_html(text)
      rescue
        return 'ページの取得に失敗しました'
      end
      get_title(html)
    end

    def get_html(url)
      open(url).read
    end

    def get_title(html)
      page = Nokogiri::HTML(html)
      page.title
    end

  end

end

if $PROGRAM_NAME == __FILE__
  
  text = ARGV[0]
  command_builder = QSActions::GetPageTitle.new
  cmd = command_builder.make_command(text)
  system cmd

end
