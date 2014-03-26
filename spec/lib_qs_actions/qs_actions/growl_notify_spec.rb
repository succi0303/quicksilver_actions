require 'spec_helper'

describe "growl notify" do

  let(:command_builder) { QSActions::GrowlNotify.new }

  it "display title & message & url in growl" do
    command = command_builder.send(:growl_notify,
                                   'title', 'This is message.', 'http://example.com')
    expect(command).to eq 'growlnotify "title" -m "This is message." --url "http://example.com"'
  end

  context "there is no url" do

    it 'display title & message, without url' do
      command = command_builder.send(:growl_notify, 'title', 'This is message.')
      expect(command).to eq 'growlnotify "title" -m "This is message."'
    end

  end

end
