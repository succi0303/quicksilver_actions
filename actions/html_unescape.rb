#!/usr/bin/env ruby
# encoding: utf-8

require_relative './lib_qs_actions/qs_actions'
require 'English'
require 'cgi'

module QSActions

  # @author succi0303
  class HTMLUnescape < ReturnTextToQuicksilver

    # HTMLアンエスケープする
    #
    # @param [String] word アンエスケープ対象のテキスト
    # @return [String] アンエスケープ済みテキスト
    def edit_text(text)
      CGI.unescapeHTML(text)
    end

  end

end

if $PROGRAM_NAME == __FILE__

  text = ARGV[0]
  command_builder = QSActions::HTMLUnescape.new
  cmd = command_builder.make_command(text)
  system cmd

end
