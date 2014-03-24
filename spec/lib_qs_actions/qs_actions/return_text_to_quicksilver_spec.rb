require 'spec_helper'

describe "return text to quicksilver" do

  let(:command_builder) { QSActions::ReturnTextToQuicksilver.new }

  it "edit the input text" do
    edited_text = command_builder.send(:edit_text, 'hogehoge')
    expect(edited_text).to eq 'hogehoge'
  end

  it "make command to return text to quicksilver" do
    command = command_builder.send(:return_text_to_quicksilver, 'hogehoge')
    expect(command).to eq 'echo "hogehoge" | qs'
  end
end
