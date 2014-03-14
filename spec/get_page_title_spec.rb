require 'spec_helper'

describe "get_page_title" do

  let(:gpt) { QSActions::GetPageTitle.new }
  
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
      title = gpt.send(:get_title_from_html, html)
      expect(title).to eq 'title'
    end

  end

end
