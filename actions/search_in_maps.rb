#!usr/bin/env ruby
# encoding: utf-8

require_relative './lib_qs_actions/qs_actions'
require 'English'
require 'uri'

module QSActions

  # @author succi0303
  class SearchInMaps < OpenApplication
    # URLスキームを生成する
    #
    # @param [String] text 検索対象のテキスト
    # @return [String] OSX内蔵地図アプリ検索用のURLスキーム
    def edit_text(text)
      %Q(http://maps.apple.com/?q=#{URI.encode(text)})
    end
  end
end

if $PROGRAM_NAME == __FILE__

  text = ARGV[0]
  command_builder = QSActions::SearchInMaps.new
  cmd = command_builder.make_command(text)
  system cmd

end
