FactoryBot.define do
  factory :jwt_blacklist do
    jti { "MyString" }
    exp { "2022-01-06 18:51:32" }
  end
end
