class Book < ApplicationRecord
  has_many :books_authors, dependent: :destroy
  has_many :authors, through: :books_authors
  has_many :contents, dependent: :destroy

  scope :with_authors, ->{ includes(:authors).joins(:authors) }
  scope :with_contents, ->{ includes(:contents).joins(:contents) }
  scope :ordered_published, ->{ order(released_at: :asc) }
  scope :written_by, ->(author){ with_authors.where(authors: author)}
end
