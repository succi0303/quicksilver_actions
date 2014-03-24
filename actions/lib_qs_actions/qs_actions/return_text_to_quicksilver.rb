# encoding: utf-8

module QSActions

  class ReturnTextToQuicksilver < MakeCommand

    def make_command(text)
      edited_text = edit_text(text)
      command = return_text_to_quicksilver(edited_text)
      return command
    end

    def return_text_to_quicksilver(text)
      %Q(echo "#{text}" | qs)
    end

  end

end
