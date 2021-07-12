class AddReferenceToSubject < ActiveRecord::Migration[6.1]
  def change
    add_reference :subjects, :teacher, foreign_key: true
  end
end
