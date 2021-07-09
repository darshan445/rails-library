class CreateJoinTableCompanyProject < ActiveRecord::Migration[6.1]
  def change
    create_join_table :companies, :projects do |t|
        t.index [:company_id, :project_id]
        t.index [:project_id, :company_id]
    end
  end
end
