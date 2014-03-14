#!/usr/bin/env ruby
# encoding: utf-8

require_relative './lib_qs_actions/qs_actions'
require 'cgi'

module QSActions

  # @author succi0303
  class HTMLUnescape < ActionTemplate

    # HTMLアンエスケープする
    #
    # @param [String] word アンエスケープ対象のテキスト
    # @return [String] アンエスケープ済みテキスト
    def update_text(text)
      CGI.unescapeHTML(text)
    end

  end

end

if $0 == __FILE__

  text = ARGV[0]
  hu = QSActions::HTMLUnescape.new
  cmd = hu.execute_action(text)
  system cmd

end
