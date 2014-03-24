#!/usr/bin/evn ruby
# encoding: utf-8

require_relative './lib_qs_actions/qs_actions'
require 'English'

module QSActions

  #author succi0303
  class GithubRepository < ReturnTextToQuicksilver

    GITHUB_URL = 'https://github.com/'

    private

    # 「ユーザ名/リポジトリ名」のテキストを受取り、該当のリポジトリのURLを返す
    #
    # @param [String] text "ユーザ名/リポジトリ名"形式のテキスト
    # @return [String] 該当するリポジトリのURL 
    def edit_text(text)
      return '入力が不正です' unless include_one_slash?(text)
      return "#{GITHUB_URL}#{text}"
    end

    # 入力されたテキストの形式をチェックする
    #
    # @param [String] text チェック対象のテキスト
    # @return [Boolean] チェック結果
    def include_one_slash?(text)
      array = text.split(/\//)
      array.size == 2
    end

  end

end

if $PROGRAM_NAME == __FILE__
  
  text = ARGV[0]
  command_builder = QSActions::GithubRepository.new
  cmd = command_builder.make_command(text)
  system cmd

end
