# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :listing do
    description "MyString"
    price "9.99"
    location "MyString"
    status "MyString"
  end
end
