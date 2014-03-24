require 'spec_helper'

describe "open application" do

  let(:command_builder) { QSActions::OpenApplication.new }

  it "make command to open application" do
    command = command_builder.send(:open_application, 'app://hogehoge')
    expect(command).to eq 'open "app://hogehoge"'
  end
end
