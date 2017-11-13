module ExceptionHandler
  # provides the more graceful `included` method
  extend ActiveSupport::Concern

  included do
    rescue_from StandardError do |exception|
      render json: { :error => exception.message }, :status => 500
    end
  end
end