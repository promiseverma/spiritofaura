class VisitorsController < ApplicationController
	layout "visitor"

	def index
		TrackUser.create(ip_address: request.remote_ip)
	end
end
