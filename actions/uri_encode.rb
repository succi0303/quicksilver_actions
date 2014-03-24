#!/usr/bin/env ruby
# encoding: utf-8

require_relative './lib_qs_actions/qs_actions'
require 'English'
require 'uri'

module QSActions

  # @author succi0303
  class URIEncode < ReturnTextToQuicksilver

    # URIエンコードする
    #
    # @param [String] word エンコード対象のテキスト
    # @return [String] エンコード済みテキスト
    def edit_text(text)
      URI.encode(text).downcase
    end

  end

end

if $PROGRAM_NAME == __FILE__

  text = ARGV[0]
  command_builder = QSActions::URIEncode.new
  cmd = command_builder.make_command(text)
  system cmd

end
