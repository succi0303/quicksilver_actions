#!/usr/bin/env ruby
# encoding: utf-8

require_relative './lib_qs_actions/qs_actions'
require 'English'
require 'uri'

module QSActions

  # @author succi0303
  class URIEncode < ActionTemplate

    # URIエンコードする
    #
    # @param [String] word エンコード対象のテキスト
    # @return [String] エンコード済みテキスト
    def update_text(text)
      encoded_text = URI.encode(text).downcase
      return encoded_text
    end

  end

end

if $PROGRAM_NAME == __FILE__

  text = ARGV[0]
  ue = QSActions::URIEncode.new
  cmd = ue.execute_action(text)
  system cmd

end
