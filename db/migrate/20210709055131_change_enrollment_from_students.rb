class ChangeEnrollmentFromStudents < ActiveRecord::Migration[6.1]
  def change
    change_column :students, :name, :text
  end
end
