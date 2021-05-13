FactoryBot.define do
  factory :content do
    name {Faker::Name.name}
    description {Faker::Books::Dune.quote}
  end
end