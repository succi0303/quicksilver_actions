require 'spec_helper'

describe "github_repository" do

  let(:gr) { QSActions::GithubRepository.new }

  describe "get github repository url" do

    it "gets url by 'user/repository'" do
      url = gr.send(:get_url, 'succi0303/dotfiles')
      expect(url).to eq 'https://github.com/succi0303/dotfiles'
    end

    describe "validation" do

      it "is valie there is one slash" do
        result = gr.send(:include_one_slash?, 'succi0303/dotfiles')
        expect(result).to be_true
      end

      it "is invalid there is no slash" do
        result = gr.send(:include_one_slash?, 'succi0303-dotfiles')
        expect(result).to be_false
      end

      it "is invalie there are more than 2 slashes" do
        result = gr.send(:include_one_slash?, 'succi0303/dot/files')
        expect(result).to be_false
      end

    end

  end
end
