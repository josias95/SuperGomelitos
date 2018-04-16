require 'rails_helper'

RSpec.feature "Pruebas de inicio de sesión" do
	before :each do
		u= User.create!(:id =>1, :name => "Laura", :email => "laura@supergomelito.com", :password => "123456")
	end

	scenario "Inicio de sesion de un admin correcto" do
		visit new_user_session_path

		fill_in "user[email]", with: "laura@supergomelito.com"
		fill_in "user[password]", with: "123456"

		click_on("Entrar")

		expect(page).to have_current_path(root_path)
	end


	scenario "Inicio de sesion de un admin incorrecto" do
		visit new_user_session_path

		fill_in "user[email]", with: "l@supergomelito.com"
		fill_in "user[password]", with: "123456"

		click_on("Entrar")

		expect(page).to have_current_path(new_user_session_path)
	end

	scenario "Registro de un user" do
		visit new_user_registration_path

		fill_in "user[name]", with: "Camila"
		fill_in "user[email]", with: "camila@supergomelito.com"
		fill_in "user[password]", with: "secret"
		fill_in "user[password_confirmation]", with: "secret"
		click_on("Registrar")
	end

	scenario "Registro de un incorrecto de un user" do
		visit new_user_registration_path

		fill_in "user[name]", with: ""
		fill_in "user[email]", with: "camila@supergomelito.com"
		fill_in "user[password]", with: "secret"
		fill_in "user[password_confirmation]", with: "other_secret"
		click_on("Registrar")
	end

end