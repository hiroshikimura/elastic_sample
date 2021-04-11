class CreateBooksAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :books_authors do |t|
      t.references :book, null: false, foreign_key: true
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
