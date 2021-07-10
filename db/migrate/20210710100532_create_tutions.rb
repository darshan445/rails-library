class CreateTutions < ActiveRecord::Migration[6.1]
  def change
    create_table :tutions do |t|
      t.string :name
      t.text :address

      t.timestamps
    end
  end
end
