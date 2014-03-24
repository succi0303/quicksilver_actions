#!/usr/bin/env ruby
# encoding: utf-8

require_relative './lib_qs_actions/qs_actions'
require 'English'
require 'uri'

module QSActions

  # @author succi0303
  class URIDecode < ReturnTextToQuicksilver

    # URIデコードする
    #
    # @param [String] word デコード対象のテキスト
    # @return [String] デコード済みテキスト
    def edit_text(text)
      URI.decode(text).downcase
    end

  end

end

if $PROGRAM_NAME == __FILE__

  text = ARGV[0]
  command_builder = QSActions::URIDecode.new
  cmd = command_builder.make_command(text)
  system cmd

end
