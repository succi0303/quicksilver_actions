require 'spec_helper'

describe "get_page_title" do

  let(:action) { QSActions::GetPageTitle.new }
  
  describe "get title from url" do

    let(:html) { 
      """
        <html>
          <head>
            <title>title</title>
          </head>
          <body>
          </body>
        </html>
      """
    }

    it "get title from html" do
      edited_text = action.send(:get_title, html)
      expect(edited_text).to eq 'title'
    end

  end

end
