class SearchController < ApplicationController
  def create
    palabra = "%#{params[:keyword]}%"

    @appointments = Appointment.where("fecha LIKE ? ", palabra)

    respond_to do |format|
      format.html { redirect_to new_appointment_path }  
      format.json { render json: @products }
      format.js 
    end
  end
end
