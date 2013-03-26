class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :string
      t.string :email
      t.string :address
      t.integer :branch_id
      t.integer :job_type_id

      t.timestamps
    end
  end
end
