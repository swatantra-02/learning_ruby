class ApplicationController < ActionController::Base
  def home
    render html: 'Hello Worlds'
  end
end
