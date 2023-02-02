class ApplicationController < ActionController::API
rescue_from ActiveRecord::RecordInvalid, with: :handle_invalid
# rescue_from: ActiveRecord::RecordNotFound, with: :handle_not_found
    
  private
    def handle_invalid(invalid)
        render json: {errors: invalid.record.errors}, status: :unprocessable_entity
    end


    # def handle_not_found
    #     render json: {errors: :
    # end

end
