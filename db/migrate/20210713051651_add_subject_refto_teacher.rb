class AddSubjectReftoTeacher < ActiveRecord::Migration[6.1]
  def change
    add_reference :teachers, :subject, foreign_key: true
  end
end
