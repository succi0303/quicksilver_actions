#!/usrbin/env ruby
# encoding: utf-8

require_relative './lib_qs_actions/qs_actions'
require 'English'

module QSActions

  # @author succi0303
  class ShowInGrowl < GrowlNotify

    def edit_text(text)
      texts = text.split(/\n/)

      name = texts[0]
      message = texts[1] ? texts[1] : name
      url = texts[2]
      return name, message, url
    end

  end

end

if $PROGRAM_NAME == __FILE__

  text = ARGV[0]
  command_builder = QSActions::ShowInGrowl.new
  cmd = command_builder.make_command(text)
  system cmd
end
