require 'spec_helper'

describe 'index' do

  it 'shows column for document content' do
    visit '/documents/'
    page.should have_content('Content')
  end

end

describe 'new' do

  it 'has content field' do
    visit '/documents/new'
    page.should have_content('Content')
  end

  it 'saves content for new document' do
    visit '/documents/new'
    fill_in 'Name', :with => 'test doc'
    fill_in 'Content', :with => 'test content'
    click_on 'Create Document'

    visit '/documents/'
    page.should have_content('test content')
  end

end