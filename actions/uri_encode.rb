#!/usr/bin/env ruby
# encoding: utf-8

require 'uri'

module QSActions

  def self.this_is_test?
    !($0 == __FILE__)
  end

  # @author succi0303
  class URIEncode

    # Quicksilverの1stペインのテキストをURIエンコードし
    # 1stペインに書き戻す
    #
    # @param [String] text Quicksilver 1stペインのテキスト
    def execute_action(text)
      updated_text = update_text(text)
      output_into_quicksilver(updated_text)
    end

    private

    # テキストをQuicksilverに出力する
    #
    # @param [String] text Quicksilverに出力するテキスト
    def output_into_quicksilver(word)
      quoted_word = %Q("#{word}")
      base_cmd_before = 'echo'
      base_cmd_after =  '| qs'

      cmd_array = [base_cmd_before, quoted_word, base_cmd_after]
      cmd = cmd_array.join(' ')

      return cmd if QSActions::this_is_test?
      system cmd
    end

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

unless QSActions::this_is_test?

  text = ARGV[0]
  ue = QSActions::URIEncode.new
  ue.execute_action(text)

end
