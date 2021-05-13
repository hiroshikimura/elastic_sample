FactoryBot.define do
  factory :book do
    title {Faker::Book.title}
    description {Faker::Books::Dune.quote}
    isbn {SecureRandom.alphanumeric(20)}
    version { 1 }
    released_at { Date.today }
  end
end
