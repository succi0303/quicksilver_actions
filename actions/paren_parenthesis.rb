#!/usr/bin/env ruby
# encoding: utf-8

require_relative './lib_qs_actions/qs_actions'

# @author succi0303
module QSActions

  class ParenParenthesis < ActionTemplate

    # テキストをシングルクォートで囲む
    #
    # @param [String] text シングルクォートで囲むテキスト
    # @return [String] シングルクォートで囲んだテキスト
    def update_text(text)
      %Q{(#{text})}
    end

  end

end

if $0 == __FILE__

  text = ARGV[0]
  pq = QSActions::ParenParenthesis.new
  cmd = pq.execute_action(text)
  system cmd

end
