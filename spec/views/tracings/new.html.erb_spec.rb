require 'rails_helper'

RSpec.describe "tracings/new", type: :view do
  before(:each) do
    assign(:tracing, Tracing.new(
      :descripcion => "MyString",
      :valor => 1
    ))
  end

  it "renders new tracing form" do
    render

    assert_select "form[action=?][method=?]", tracings_path, "post" do

      assert_select "input[name=?]", "tracing[descripcion]"

      assert_select "input[name=?]", "tracing[valor]"
    end
  end
end
