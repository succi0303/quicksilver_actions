require_relative '../actions/get_page_title'

describe GetPageTitle do

  let(:gpt) { GetPageTitle.new }
  
  it "construct command correctly" do
    cmd = gpt.send(:construct_command, 'hogehoge')
    expect(cmd).to eq 'echo "hogehoge" | qs'
  end

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
