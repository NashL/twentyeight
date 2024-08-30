FactoryBot.define do
  factory :patient do
    full_name { "MyString" }
    email { "MyString" }
    date_of_birth { "2024-08-30" }
    state { nil }
  end
end
