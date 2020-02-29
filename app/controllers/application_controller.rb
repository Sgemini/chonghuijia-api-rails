class ApplicationController < ActionController::Base
	rescue_from ActiveRecord::RecordNotFound, with: :render_404
	helper_method :current_user

	def current_user
		if session[:user_id]
			@current_user ||= User.find(session[:user_id])
		else
			@current_user = nil
			render status: 401, json: { message: '请登录' }
		end
	end

	private

	def render_404
		render file: "/public/404.html", layout: false, status: 404
	end
end
