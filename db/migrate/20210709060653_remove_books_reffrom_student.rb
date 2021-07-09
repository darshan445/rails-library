class RemoveBooksReffromStudent < ActiveRecord::Migration[6.1]
  def change
    remove_reference :books, :student, foreign_key: true
  end
end
