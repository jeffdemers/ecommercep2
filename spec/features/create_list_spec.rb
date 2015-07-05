require 'rails_helper'

RSpec.describe "Login", :type => :feature do
  describe "loggin a seller in" do
    it "logs in a user and redirects to sellers path" do
      FactoryGirl.create(:valid_seller)

      visit new_session_path
      fill_in "Email", with: "integration@integration.com"
      fill_in "Password", with: "password123"
      click_on "Login"
      expect(current_path).to eq(users_path)
    end
  end
end