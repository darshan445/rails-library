class StudentsSubjects < ActiveRecord::Migration[6.1]
  def change
    create_join_table :students, :subjects
  end
end
