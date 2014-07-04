# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :business do
    user nil
    url "MyString"
    email "MyString"
    phone 1
  end
end
