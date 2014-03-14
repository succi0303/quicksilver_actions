# encoding: utf-8

module QSActions

  # @author succi0303 <succi0303@gmail.com>
  class ActionTemplate
    
    # Quicksiverの1stペインのテキストを受け取り、
    # 加工した後、1stペインに書き戻すシェルコマンドを出力する
    #
    # @param [String] text Quicksilverの1stペインのテキスト
    # @return [String] 結果をQuicksilverの1stペインに出力するコマンド
    def execute_action(text)
      updated_text = update_text(text)
      output_into_quicksilver(updated_text)
    end

    private

    # テキストを受取り、Quicksilverの1stペインに出力する
    # シェルコマンドを返す
    #
    # @param [String] Quicksilverの1stペインに出力するテキスト
    # @return [String] シェルコマンド
    def output_into_quicksilver(text)
      cmd = %Q(echo "#{text}" | qs)
      return cmd
    end

  end

end
