class VisitorsController < ApplicationController
	layout "visitor"

	def index
		TrackUser.create(ip_address: request.remote_ip)
	end

	def contactus
		@contact = Contact.new
	end

	def send_message
		contact = Contact.new(contact_params)
		respond_to do |format|
			if contact.save
	      format.js
			end		
    end
	end

	private

	def contact_params
    params.require(:contact).permit(:name, :email, :message, :phone)
  end

end
