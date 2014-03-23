#!/usr/bin/evn ruby
# encoding: utf-8

require_relative './lib_qs_actions/qs_actions'

module QSActions

  #author succi0303
  class GithubRepository < ActionTemplate

    GITHUB_URL = 'https://github.com/'

    private

    # 「ユーザ名/リポジトリ名」のテキストを受取り、該当のリポジトリのURLを返す
    #
    # @param [String] text "ユーザ名/リポジトリ名"形式のテキスト
    # @return [String] 該当するリポジトリのURL 
    def update_text(text)

      if include_one_slash?(text)
        updated_text = get_url(text)
      else
        updated_text = '入力が不正です'
      end

      return updated_text
    end


    # ユーザ名とリポジトリからURLを生成する
    #
    # @param [String] text "ユーザ名/リポジトリ"形式のテキスト
    # @return [String] 該当するリポジトリのURL
    def get_url(text)
      "#{GITHUB_URL}#{text}"
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

if $0 == __FILE__
  
  text = ARGV[0]
  gr = QSActions::GithubRepository.new
  cmd = gr.execute_action(text)
  system cmd

end
