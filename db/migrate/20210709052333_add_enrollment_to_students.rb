class AddEnrollmentToStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :enrollment_no, :decimal
  end
end
