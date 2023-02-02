class ApplicationController < ActionController::Base

  helper_method :batman, :logged_in?

  def batman
    @batman ||= Batman.find(session[:batman_id]) if session[:batman_id]
  end

  def logged_in?
    !!batman
  end
end
