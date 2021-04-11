class AddReferenceBookToContent < ActiveRecord::Migration[6.1]
  def change
    add_reference :contents, :book, null: false, foreign_key: true
  end
end
