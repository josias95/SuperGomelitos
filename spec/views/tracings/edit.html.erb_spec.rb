require 'rails_helper'

RSpec.describe "tracings/edit", type: :view do
  before(:each) do
    @tracing = assign(:tracing, Tracing.create!(
      :descripcion => "MyString",
      :valor => 1
    ))
  end

  it "renders the edit tracing form" do
    render

    assert_select "form[action=?][method=?]", tracing_path(@tracing), "post" do

      assert_select "input[name=?]", "tracing[descripcion]"

      assert_select "input[name=?]", "tracing[valor]"
    end
  end
end
