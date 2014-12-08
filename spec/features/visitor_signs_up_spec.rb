require 'spec_helper'

feature 'Visitor signs up' do
  scenario 'via email' do
    visit sign_up_path
    expect(page).to have_content("First name")
    fill_in "user_first_name", with: "John"
    fill_in "user_last_name", with: "Doe"
    fill_in "user_email", with: "john@test.com"
    fill_in "user_password", with: "test123"
    fill_in "user_password_confirmation", with: "test123"
    click_button "Create account"
    expect(User.count).to eq(1)
  end
end
