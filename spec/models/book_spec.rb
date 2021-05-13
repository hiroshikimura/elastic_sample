require 'rails_helper'

RSpec.describe Book, type: :model do
  describe "relationship" do
    it{is_expected.to have_many(:books_authors).dependent(:destroy)}
    it{is_expected.to have_many(:authors).through(:books_authors)}
    it{is_expected.to have_many(:contents).dependent(:destroy)}
  end

  describe "#book_author" do
    let(:books){ create_list :book, 10}
    let(:authors){ create_list :author, 10 }
    let!(:books_authors) do
      books.zip(authors).map do |e|
        create :books_author, book: e.first, author: e.last
      end
    end
    it do
      books.zip(authors).each do |e|
        expect(Book.written_by(e.last).to_a).to eq [e.first]
      end
    end
  end
end
