require 'rails_helper'

RSpec.describe Seller, :type => :model do

  context "email" do

    it "must be present email" do
      expect(FactoryGirl.build(:null_email).save).to be false
    end

    it "test for max email limit" do
      expect(FactoryGirl.build(:email_limit).save).to be false
    end

    it "must be unique in the system" do
      #create a valid user and save in the database
      valid_user = FactoryGirl.create :valid_seller

      #attempt to create another user with the same email
      #in this case save should return false as this is a duplicate email
      expect(FactoryGirl.build(:valid_seller).save).to be false
    end

  end

  context "password" do

    it "must be present pw" do
      expect(FactoryGirl.build(:null_password).save).to be false
    end

    it "test for max pw minimum" do
      expect(FactoryGirl.build(:pw_limit).save).to be false
    end

    it "test for pw matching with confirmation pw" do
      seller = FactoryGirl.build(:valid_seller, password_confirmation: "")

      expect(seller.save).to be false
    end


  end

end
