#!/usr/bin/env ruby
# encoding: utf-8

require_relative './lib_qs_actions/qs_actions'

# @author succi0303
module QSActions

  class ParenKakko < ActionTemplate

    # テキストを括弧で囲む
    #
    # @param [String] text 括弧で囲むテキスト
    # @return [String] 括弧で囲んだテキスト
    def update_text(text)
      updated_text = %Q(「#{text}」)
      return updated_text
    end

  end

end

if $0 == __FILE__

  text = ARGV[0]
  pq = QSActions::ParenKakko.new
  cmd = pq.execute_action(text)
  system cmd

end
