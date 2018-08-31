class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from ActiveRecord::RecordNotFound, with: :not_fouond

  def hello
    text = "PARAMS #{params}"
    render plain: text
  end

  def not_fouond
    render 'errors/404', status: 404
  end
end
