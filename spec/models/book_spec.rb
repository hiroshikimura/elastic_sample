require 'rails_helper'

RSpec.describe Book, type: :model do
  describe "relationship" do
    it{is_expected.to have_many(:books_authors).dependent(:destroy)}
    it{is_expected.to have_many(:authors).through(:books_authors)}
    it{is_expected.to have_many(:contents).dependent(:destroy)}
  end
end
