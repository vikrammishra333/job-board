class Job < ActiveRecord::Base

  attr_accessible :exp_in_tech, :job_code, :job_description, :job_location, :job_title, :job_valid_till, :max_exp_req,
                  :min_exp_req, :company_id, :user_id, :job_headline

  belongs_to :company
  belongs_to :user

  ########################## validation area ################################################

  validates :job_title, :presence => true
  validates :job_headline, :presence => true
  validates :exp_in_tech, :presence => true
  validates :min_exp_req, :presence => true
  validates :max_exp_req, :presence => true
  validates_numericality_of :max_exp_req, :greater_than_or_equal_to => :min_exp_req, :allow_blank => true

  ##################### End of validation area ##############################################

end
