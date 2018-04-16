require 'rails_helper'

RSpec.feature "Agregar eventos" do

	before :each do
		u= User.create!(:id =>1, :name => "Esteban", :email => "esteban@supergomelito.com", :password => "123456")
		e= Event.create!(:name => "Dias de los niños", :description => "esto es una prueba", :user_id => 1)
	end

	scenario "Permite al administrador agregar eventos" do

		visit new_user_session_path

		fill_in "user[email]", with: "esteban@supergomelito.com"
		fill_in "user[password]", with: "123456"

		click_on("Entrar")

		click_on("Eventos")
		click_on("Nuevo evento")

		fill_in "event[name]", with: "Dia de los niños"
		fill_in "event[description]", with: "esto es una prueba"
		click_on("Crear evento")
		
		expect(page).to have_content("Dia de los niños")
		expect(page).to have_content("esto es una prueba")

	end

	scenario "Prueba de cuando un evento no es creado correctamente" do

		visit new_user_session_path

		fill_in "user[email]", with: "esteban@supergomelito.com"
		fill_in "user[password]", with: "123456"

		click_on("Entrar")

		click_on("Eventos")
		click_on("Nuevo evento")

		fill_in "event[name]", with: "Dia de los niños"
		fill_in "event[description]", with: ""
		click_on("Crear evento")
		
		expect(page).to have_current_path(events_path)
		

	end


	scenario "Permite al administrador eliminar un evento" do
		visit new_user_session_path

		fill_in "user[email]", with: "esteban@supergomelito.com"
		fill_in "user[password]", with: "123456"

		click_on("Entrar")
		
		click_on("Eventos")

		click_on("Eliminar")
		
		
	end 
	
end