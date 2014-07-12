require 'spec_helper'

feature 'Visitor visits' do
  scenario 'the home page' do
    visit root_path
    page.should have_content("About")
  end
end 