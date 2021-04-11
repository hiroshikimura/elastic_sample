class AddBookInfoToBook < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :isbn, :string, index: true
    add_column :books, :version, :integer
    add_column :books, :released_at, :date
    add_index  :books, :title
  end
end
