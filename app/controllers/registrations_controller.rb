class RegistrationsController < Devise::RegistrationsController

  def new

    if params[:user_type] == "employer"

      resource = build_resource({:user_type_id => UserType.find_by_title("Manager").id, :user_type => "employer"})
      resource.build_company

      render :partial => "devise/registrations/form", :layout => false

    elsif params[:user_type] == "job seeker"

      resource = build_resource({:user_type => "job seeker"})
      render :partial => "form"

    else

      super

    end

  end

end