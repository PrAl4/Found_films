class ApplicationController < ActionController::Base
   def index
  end

  protect_from_forgery with: :exception
  include SessionsHelper
end
