module DeviseHelper

  #overwriting devise error message to display errors in different format
  def devise_error_messages!

    @msg = Hash.new
    return "" if resource.errors.empty?

    resource.errors.each do |k,v|

      if k.to_s.include?"."

        error_key = k.to_s
        key = error_key[error_key.index('.')+1..error_key.length]
        @msg[key.to_sym] = resource.errors[k]

      else

        @msg[k] = resource.errors[k]

      end

    end

  end
  
end