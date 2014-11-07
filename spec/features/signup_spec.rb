require 'rails_helper'

feature "Registration" do
  scenario "User signs up and is automatically logged in" do
    visit root_path
    click_on "Register"
    fill_in "Name", with: "User"
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "test"
    fill_in "Confirm", with: "test"
    within ".registration-form" do
      click_on "Register"
    end
    expect(page).to have_content "Logout"
  end
end
