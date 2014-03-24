# encoding: utf-8

module QSActions

  class OpenApplication < MakeCommand

    def make_command(text)
      edited_text = edit_text(text)
      command = open_application(edited_text)
      return command
    end

    def open_application(text)
      %Q(open "#{text}")
    end
  end
end
