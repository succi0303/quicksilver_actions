#!usr/bin/env ruby
# encoding: utf-8

require_relative './lib_qs_actions/qs_actions'
require 'English'
require 'uri'

module QSActions

  # @author scci0303
  class SearchOnepassword < OpenApplication
    # 1password検索のURLスキームを生成する
    #
    # @param [String] text 検索対象のテキスト
    # @return [String] 1password検索用のURLスキーム
    def edit_text(text)
      %Q(onepassword4://search/#{URI.encode(text)})
    end
  end
end

if $PROGRAM_NAME == __FILE__

  text = ARGV[0]
  command_builder = QSActions::SearchOnepassword.new
  cmd = command_builder.make_command(text)
  system cmd
end
