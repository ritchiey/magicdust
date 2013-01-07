# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    provider "developer"

    factory :admin_user do
      name "admin"
      uid "admin@example.com"
      role 'admin'
    end

    factory :client_user do
      name "client"
      uid "client@example.com"
      role 'client'
    end
    factory :contractor_user do
      name "contractor"
      uid "contractor@example.com"
      role 'contractor'
    end
  end
end
