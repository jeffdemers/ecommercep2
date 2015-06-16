FactoryGirl.define do
  factory :seller do

##GENERAL
  factory :valid_seller, class: Seller do

    email "test@test.com"
    password "password"


  end

  factory :null_email, class: Seller do

    email nil
    password "password"

  end

  factory :null_password, class: Seller do

    email "test@test.com"
    password nil

  end
    factory :email_limit, class: Seller do
      email "test@tkdkjkdkkdkdkdkdkkdkdkdkdllllllllllllllllllllllllkdkdkdkkdkkdkdkdkdkdk.com"
      password "password"
    end

  factory :pw_limit, class: Seller do
    email "test@test.com"
    password "test"
  end

  factory :invalid_seller, class: Seller do

    email "test@test.com"
    password "password"
    password_confirmation "password123"

  end



  end
end



