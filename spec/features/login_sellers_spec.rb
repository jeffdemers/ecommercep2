require 'rails_helper'

RSpec.describe "Login", :type => :feature do
  describe "loggin a seller in" do
    it "logs in a seller and redirects to sellers path" do
      FactoryGirl.create(:valid_seller_integration)

      visit new_session_path
      fill_in "Email", with: "test@test.com"
      fill_in "Password", with: "password"
      click_on "Login"
      expect(current_path).to eq(sellers_path)
    end
  end
end

