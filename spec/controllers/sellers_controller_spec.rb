require 'rails_helper'

RSpec.describe SellersController, :type => :controller do
  #render_views

  it "should return index view for index method" do

    get :index

    expect(response).to render_template(:index)
  end

  it "new creates a new seller" do
    get :new

    expect(assigns(:seller)).to be_a_new(Seller)
  end

  it "creates a new user for the form on the new page" do
    post :create, seller: FactoryGirl.attributes_for(:valid_seller)

  end

  it "Allows creation of a valid user, redirects correctly" do

    post :create, seller: FactoryGirl.attributes_for(:valid_seller)

    expect(response).to redirect_to new_session_path
  end

  it "Doesn't allow invalid user, redirects correctly" do

  post :create, seller: FactoryGirl.attributes_for(:valid_seller, :password => "")

  expect(response).to redirect_to new_session_path
  end


end
