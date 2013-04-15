module ApplicationHelper

  def customize_error_message(current_model)

    @msg = Hash.new
    return "" if current_model.errors.empty?

    current_model.errors.each do |k,v|

      if k.to_s.include?"."
           error_key = k.to_s
           key = error_key[error_key.index('.')+1..error_key.length]
           @msg[key.to_sym] = current_model.errors[k]

      else

        @msg[k] = current_model.errors[k]

      end

    end

  end

end
