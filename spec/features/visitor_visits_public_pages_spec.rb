require 'spec_helper'

feature 'Visitor visits' do
  scenario 'the home page' do
    visit root_path
    expect(page).to have_content("About")
  end
end
