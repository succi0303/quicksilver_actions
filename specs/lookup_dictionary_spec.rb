require_relative '../actions/lookup_dictionary'

describe 'lookup_dictionary' do

  let(:ld) { LookupDict.new }

  it "construct correct command from arg" do
    cmd = ld.send(:construct_command, 'test')
    expect(cmd).to eq 'open dict://test'
  end

  it "does URLencode to word" do
    encoded_word = ld.send(:url_encode, 'テスト')
    expect(encoded_word).to eq '%e3%83%86%e3%82%b9%e3%83%88'
  end
end
