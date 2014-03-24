#!usr/bin/env ruby
# encoding: utf-8

require 'English'
require 'uri'

module QSActions
  # 
  # == LookupDect(lookup dictionary)
  #
  # Quicksilverの1stペインに入力されたテキストを
  # Macの内蔵辞書を起動して検索する
  #
  # Author:: succi0303
  #
  class LookupDict

    # 検索対象のテキストからシェル実行用のコマンドを作成し
    # systemメソッドで実行する。
    #
    # @param [String] word 検索するテキスト
    # @note 実行すると検索テキストを引き渡した状態でMacの内蔵辞書を起動する
    def lookup(word)
      encoded_word = url_encode(word)
      cmd = construct_command(encoded_word)
      system cmd
    end

    private

    # 検索するテキストを受取り、シェルで実行するコマンドを返す。
    #
    # @param [String] word 検索するテキスト(URIエンコード済)
    # @return [String] シェルで実行するコマンド
    def construct_command(word)
      base_cmd = 'open dict://'
      cmd = [base_cmd, word]
      cmd.join('')
    end

    # 引数のテキストをURIエンコードする。
    # URIスキームを通じてMacの内蔵辞書を起動するため。
    #
    # @param [String] word 検索するテキスト
    # @return [String] URIエンコード済みテキスト
    def url_encode(word)
      encoded_word = URI.encode(word).downcase
      return encoded_word
    end

  end

end

if $PROGRAM_NAME == __FILE__

  word = ARGV[0]

  ld = QSActions::LookupDict.new
  ld.lookup(word)

end
