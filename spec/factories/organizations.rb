FactoryBot.define do
  factory :organization do
    name { Faker::Company.name }
    cnpj { Faker::Company.french_siret_number }
  end
end
