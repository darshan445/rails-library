class ChangeFieldStringToIntegerAuthor < ActiveRecord::Migration[6.1]
  def change
    change_column :student, :name, :integer
  end
end
