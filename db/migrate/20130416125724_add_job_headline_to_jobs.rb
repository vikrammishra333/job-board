class AddJobHeadlineToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :job_headline, :string
  end
end
