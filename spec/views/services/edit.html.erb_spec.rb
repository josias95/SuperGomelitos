require 'rails_helper'

RSpec.describe "services/edit", type: :view do
  before(:each) do
    @service = assign(:service, Service.create!(
      :nombre => "MyString",
      :descripcion => "MyText",
      :valor => 1
    ))
  end

  it "renders the edit service form" do
    render

    assert_select "form[action=?][method=?]", service_path(@service), "post" do

      assert_select "input[name=?]", "service[nombre]"

      assert_select "textarea[name=?]", "service[descripcion]"

      assert_select "input[name=?]", "service[valor]"
    end
  end
end
