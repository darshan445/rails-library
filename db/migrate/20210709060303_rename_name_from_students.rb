class RenameNameFromStudents < ActiveRecord::Migration[6.1]
  def change
    rename_column :students, :name, :namee
  end
end
