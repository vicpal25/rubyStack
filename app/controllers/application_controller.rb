class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    render text: "HOLA MUCHACHOS"
  end

  def goodbye
    render text: "adios"
  end


end
