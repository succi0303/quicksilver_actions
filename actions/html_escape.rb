#!/usr/bin/env ruby
# encoding: utf-8

require_relative './lib_qs_actions/qs_actions'
require 'English'
require 'cgi'

module QSActions

  # @author succi0303
  class HTMLEscape < ReturnTextToQuicksilver
    # HTMLエスケープする
    #
    # @param [String] word エスケープ対象のテキスト
    # @return [String] エスケープ済みテキスト
    def edit_text(text)
      CGI.escapeHTML(text)
    end

  end

end


if $PROGRAM_NAME == __FILE__

  text = ARGV[0]
  command_builder = QSActions::HTMLEscape.new
  cmd = command_builder.make_command(text)
  system cmd

end
