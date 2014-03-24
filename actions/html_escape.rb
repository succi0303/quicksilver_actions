#!/usr/bin/env ruby
# encoding: utf-8

require_relative './lib_qs_actions/qs_actions'
require 'English'
require 'cgi'

module QSActions

  # @author succi0303
  class HTMLEscape < ActionTemplate
    # HTMLエスケープする
    #
    # @param [String] word エスケープ対象のテキスト
    # @return [String] エスケープ済みテキスト
    def update_text(text)
      CGI.escapeHTML(text)
    end

  end

end


if $PROGRAM_NAME == __FILE__

  text = ARGV[0]
  he = QSActions::HTMLEscape.new
  cmd = he.execute_action(text)
  system cmd

end
