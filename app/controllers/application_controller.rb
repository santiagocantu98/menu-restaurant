class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

	def access_denied(exception)
		redirect_to "/", alert: exception.message
	end

end
