class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :e_count
      t.text :address

      t.timestamps
    end
  end
end
