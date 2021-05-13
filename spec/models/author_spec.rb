require 'rails_helper'

RSpec.describe Author, type: :model do
  describe "relationship" do
    it{is_expected.to have_many(:books_authors).dependent(:destroy)}
    it{is_expected.to have_many(:books).through(:books_authors)}
  end

  describe "#book_author" do
    let(:books){ create_list :book, 100}
    let(:authors){ create_list :author, 100 }
    let!(:books_authors) do
      books.zip(authors).map do |e|
        create :books_author, book: e.first, author: e.last
      end
    end
    it do
      books.zip(authors).each do |e|
        expect(Author.book_author(e.first).to_a).to eq [e.last]
      end
    end
  end
end