#!/usr/bin/env ruby
# encoding: utf-8

require_relative './lib_qs_actions/qs_actions'
require 'uri'

module QSActions

  # @author succi0303
  class URIDecode < ActionTemplate

    # URIデコードする
    #
    # @param [String] word デコード対象のテキスト
    # @return [String] デコード済みテキスト
    def update_text(text)
      decoded_text = URI.decode(text).downcase
      return decoded_text
    end

  end

end

if $0 == __FILE__

  text = ARGV[0]
  ue = URIDecode.new
  cmd = ue.execute_action(text)
  system cmd

end
