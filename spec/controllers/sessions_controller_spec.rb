require 'rails_helper'

RSpec.describe SessionsController, :type => :controller do

  it "Should render the new template" do

    get :new

    expect(response).to render_template(:new)

  end

  it "Should assign new user for the login form" do
    get :new

    expect(assigns(:seller)).to be_a_new(Seller)
  end

  it "Should login user with correct user name and password" do
    post :create, seller: FactoryGirl.attributes_for(:valid_seller)

    expect(response).to redirect_to new_session_path


  end

  it "Should not login user with incorrect user name and password" do

    post :create, seller: FactoryGirl.attributes_for(:valid_seller, :password => "")
    expect(response).to redirect_to new_session_path

  end

  it "Should destroy the session when logging a user out" do
    get :destroy

    expect(response).to redirect_to new_session_path

  end

  it "Should redirect to items page when logging a user out" do
    get :destroy

  end


end
