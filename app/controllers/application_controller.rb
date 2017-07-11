class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include SetSource
  
  def current_user
    super || OpenStruct.new(name: "Guest User", first_name: "Guest", last_name: "User", email: "guest@user.org") 
  end
  
  before_filter :set_title
  
  def set_title
    @page_title = "Cristian Becerril | My Portfolio - Devcamp"
  end
end