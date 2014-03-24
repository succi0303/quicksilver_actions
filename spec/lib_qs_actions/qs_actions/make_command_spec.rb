require 'spec_helper'

describe "make_command" do

  let(:command_builder) { QSActions::MakeCommand.new }

  it "edit the input text" do
    edited_text = command_builder.send(:edit_text, 'hogehoge')
    expect(edited_text).to eq 'hogehoge'
  end

end
