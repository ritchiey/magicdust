# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :voucher do
    job nil
    claimant nil
    code "MyString"
  end
end
