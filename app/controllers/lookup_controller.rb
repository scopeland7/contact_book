class LookupController < ApplicationController
  def search
  end

  def results
  	
  	if params[:name]!= nil
	  	name_arr = params[:name].downcase.titleize.split
	  	@results = Contact.where(first_name: name_arr[0], last_name: name_arr[1], user_id: current_user.id)
	  elsif params[:city] != nil
	  	@results = Contact.where(city: params[:city].downcase.titleize, user_id: current_user.id)
	  end

  end

end
