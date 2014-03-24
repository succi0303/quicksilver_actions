#!/usr/bin/env ruby
# encoding: utf-8

require_relative './lib_qs_actions/qs_actions'
require 'English'

# @author succi0303
module QSActions

  class ParenParenthesis < ReturnTextToQuicksilver

    # テキストをシングルクォートで囲む
    #
    # @param [String] text シングルクォートで囲むテキスト
    # @return [String] シングルクォートで囲んだテキスト
    def edit_text(text)
      %Q{(#{text})}
    end

  end

end

if $PROGRAM_NAME == __FILE__

  text = ARGV[0]
  command_builder = QSActions::ParenParenthesis.new
  cmd = command_builder.make_command(text)
  system cmd

end
