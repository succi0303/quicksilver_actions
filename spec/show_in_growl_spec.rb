require 'spec_helper'

describe 'show_in_growl' do

  let(:action) { QSActions::ShowInGrowl.new }

  context "with title & message & url" do

    before(:each) do
      text = <<EOF
title
This is message.
http://example.com
EOF
      @title, @message, @url = action.send(:edit_text, text)
    end

    it "have title from line 1 in text" do
      expect(@title).to eq 'title'
    end

    it "have message from line 2 in text" do
      expect(@message).to eq 'This is message.'
    end

    it "have url from line 3 in text" do
      expect(@url).to eq 'http://example.com'
    end

  end

  context "with title only" do

    before(:each) do
      text = <<EOF
title
EOF
      @title, @message, @url = action.send(:edit_text, text)
    end

    it "have title from line 1 in text" do
      expect(@title).to eq 'title'
    end

    it "have message from line 2 in text" do
      expect(@message).to eq 'title'
    end

    it "have url from line 3 in text" do
      expect(@url).to eq nil
    end

  end
end
