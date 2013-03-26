class CreateJobTypes < ActiveRecord::Migration
  def change
    create_table :job_types do |t|
      t.string :name
      t.decimal :rate_per_hour

      t.timestamps
    end
  end
end
