require 'spec_helper'

describe "return text to quicksilver" do

  let(:command_builder) { QSActions::ReturnTextToQuicksilver.new }

  it "make command to return text to quicksilver" do
    command = command_builder.send(:return_text_to_quicksilver, 'hogehoge')
    expect(command).to eq 'echo "hogehoge" | qs'
  end
end
