class ApplicationController < ActionController::Base
	rescue_from ActiveRecord::RecordNotFound, with: :render_404

	private

	def render_404
		render file: "/public/404.html", layout: false, status: 404
	end
end
