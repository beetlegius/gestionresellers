class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception, prepend: true
  before_action :set_variables

  def set_variables(*args)
    @variables = args.extract_options!
    @variables[:title] ||= "#{controller_name}##{action_name}"
  end
  helper_method :set_variables

  def variables
    @variables || {}
  end
  helper_method :variables

end
