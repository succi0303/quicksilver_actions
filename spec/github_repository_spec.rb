require 'spec_helper'

describe "github_repository" do

  let(:action) { QSActions::GithubRepository.new }

  describe "get github repository url" do

    it "gets github repository url" do
      edited_text = action.send(:edit_text, 'succi0303/dotfiles')
      expect(edited_text).to eq 'https://github.com/succi0303/dotfiles'
    end

    describe "validation" do

      it "is valie there is one slash" do
        result = action.send(:include_one_slash?, 'succi0303/dotfiles')
        expect(result).to be_true
      end

      it "is invalid there is no slash" do
        result = action.send(:include_one_slash?, 'succi0303-dotfiles')
        expect(result).to be_false
      end

      it "is invalie there are more than 2 slashes" do
        result = action.send(:include_one_slash?, 'succi0303/dot/files')
        expect(result).to be_false
      end

    end

  end
end
