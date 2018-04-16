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
		click_on("New Event")

		fill_in "event[name]", with: "Dia de los niños"
		fill_in "event[description]", with: "gggg"
		click_on("Create Event")
		
		expect(page).to have_content("Dia de los niños")
		expect(page).to have_content("gggg")

	end

	scenario "Prueba de cuando un evento no es creado correctamente" do

		visit new_user_session_path

		fill_in "user[email]", with: "esteban@supergomelito.com"
		fill_in "user[password]", with: "123456"

		click_on("Entrar")

		click_on("Eventos")
		click_on("New Event")

		fill_in "event[name]", with: "Dia de los niños"
		fill_in "event[description]", with: ""
		click_on("Create Event")
		
		expect(page).to have_current_path(events_path)
		

	end

	scenario "Permite al administrador editar un evento" do
		visit new_user_session_path

		fill_in "user[email]", with: "esteban@supergomelito.com"
		fill_in "user[password]", with: "123456"

		click_on("Entrar")
		
		click_on("Eventos")

		click_on("Edit")

		fill_in "event[name]", with: "Dia de los niños"
		click_on("Update Event")
		
		expect(page).to have_content("Dia de los niños")

	end 


	scenario "Prueba de un evento  mal editado" do
		visit new_user_session_path

		fill_in "user[email]", with: "esteban@supergomelito.com"
		fill_in "user[password]", with: "123456"

		click_on("Entrar")
		
		click_on("Eventos")

		click_on("Edit")

		fill_in "event[name]", with: ""
		click_on("Update Event")
		
		expect(page).to have_content("Name can't be blank")

	end 


	scenario "Permite al administrador ver un evento" do
		visit new_user_session_path

		fill_in "user[email]", with: "esteban@supergomelito.com"
		fill_in "user[password]", with: "123456"

		click_on("Entrar")
		
		click_on("Eventos")

		click_on("Edit")

		fill_in "event[name]", with: "Dia de los niños"

		click_on("Update Event")
		
		expect(page).to have_content("Dia de los niños")

	end 

	scenario "Permite al administrador eliminar un evento" do
		visit new_user_session_path

		fill_in "user[email]", with: "esteban@supergomelito.com"
		fill_in "user[password]", with: "123456"

		click_on("Entrar")
		
		click_on("Eventos")

		click_on("Destroy")
		
		expect(page).to have_content("Event was successfully destroyed.")

	end 
	
end