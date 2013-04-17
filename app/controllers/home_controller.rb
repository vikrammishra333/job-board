class HomeController < ApplicationController

  before_filter :authenticate_user!

  def index

    @jobs = Job.where("job_valid_till > ? ", Date.today)

  end

end
