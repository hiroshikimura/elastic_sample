class Author < ApplicationRecord
  has_many :books_authors, dependent: :destroy
  has_many :books, through: :books_authors

  scope :with_books, ->{ includes(:books).joins(:books) }
end
