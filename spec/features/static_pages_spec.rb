require 'spec_helper'

describe "Static Pages" do
  describe "Home page" do

    it 'should have phrase hello world' do
      visit '/'
      expect(page).to have_content('Hello world')
    end

  end
end