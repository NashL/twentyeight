FactoryBot.define do
  factory :state do
    name { "MyString" }
    abbr { "MyString" }
    services_offered { false }
    minimum_age { 1 }
  end
end
