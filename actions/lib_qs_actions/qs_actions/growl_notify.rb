# encoding: utf-8

module QSActions

  class GrowlNotify < MakeCommand

    def make_command(text)
      name, message, url = edit_text(text)
      command = growl_notify(name, message, url)
      return command
    end

    def growl_notify(name, message=nil, url=nil)
      command = %Q(growlnotify "#{name}" -m "#{message}")
      command = command + %Q( --url "#{url}") unless url.nil?
      return command
    end
  end
end
