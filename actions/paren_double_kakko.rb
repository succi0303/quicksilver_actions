#!/usr/bin/env ruby
# encoding: utf-8

require_relative './lib_qs_actions/qs_actions'
require 'English'

# @author succi0303
module QSActions

  class ParenDoubleKakko < ReturnTextToQuicksilver

    # テキストを二重括弧で囲む
    #
    # @param [String] text 二重括弧で囲むテキスト
    # @return [String] 二重括弧で囲んだテキスト
    def edit_text(text)
      %Q(『#{text}』)
    end

  end

end

if $PROGRAM_NAME == __FILE__

  text = ARGV[0]
  command_builder = QSActions::ParenDoubleKakko.new
  cmd = command_builder.make_command(text)
  system cmd

end
