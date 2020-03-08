class ApplicationController < ActionController::Base
	rescue_from ActiveRecord::RecordNotFound, with: :render_404
	helper_method :current_user
	protect_from_forgery with: :null_session, unless: -> { ENV['RACK_ENV'] == 'production'}

	def authorize_request
		header = request.headers['auth_token']
		header = header.split(' ').last if header
		begin
		  @decoded = JsonWebToken.decode(header)
		  @current_user = User.find(@decoded[:user_id])
		rescue ActiveRecord::RecordNotFound => e
		  render json: { errors: e.message }, status: :unauthorized
		rescue JWT::DecodeError => e
		  render json: { errors: e.message }, status: :unauthorized
		end
	end

	private

	def render_404
		render file: "/public/404.html", layout: false, status: 404
	end

end
