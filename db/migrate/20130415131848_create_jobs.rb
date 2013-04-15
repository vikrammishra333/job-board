class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :job_title
      t.text :job_description
      t.string :job_code
      t.integer :min_exp_req
      t.integer :max_exp_req
      t.string :exp_in_tech
      t.date :job_valid_till
      t.string :job_location
      t.references :company

      t.timestamps
    end
    add_index :jobs, :company_id
  end
end
