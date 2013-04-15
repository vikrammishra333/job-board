class Job < ActiveRecord::Base
  belongs_to :company_id
  attr_accessible :exp_in_tech, :job_code, :job_description, :job_location, :job_title, :job_valid_till, :max_exp_req, :min_exp_req
end
