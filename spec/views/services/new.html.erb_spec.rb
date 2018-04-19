require 'rails_helper'

RSpec.describe "services/new", type: :view do
  before(:each) do
    assign(:service, Service.new(
      :nombre => "MyString",
      :descripcion => "MyText",
      :valor => 1
    ))
  end

  it "renders new service form" do
    render

    assert_select "form[action=?][method=?]", services_path, "post" do

      assert_select "input[name=?]", "service[nombre]"

      assert_select "textarea[name=?]", "service[descripcion]"

      assert_select "input[name=?]", "service[valor]"
    end
  end
end
