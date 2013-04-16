class Job < ActiveRecord::Base

  attr_accessible :exp_in_tech, :job_code, :job_description, :job_location, :job_title, :job_valid_till, :max_exp_req,
                  :min_exp_req, :company_id, :user_id

  belongs_to :company
  belongs_to :user

  validates :job_title, :presence => true

end
