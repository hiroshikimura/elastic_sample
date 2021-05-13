FactoryBot.define do
  factory :books_author do
    book { build :book }
    author { build :author }
  end
end