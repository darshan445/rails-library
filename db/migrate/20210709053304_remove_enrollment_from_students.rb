class RemoveEnrollmentFromStudents < ActiveRecord::Migration[6.1]
  def change
    remove_column :students, :enrollment_no, :decimal
  end
end
