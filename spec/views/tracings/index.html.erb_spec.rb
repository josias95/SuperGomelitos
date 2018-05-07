require 'rails_helper'

RSpec.describe "tracings/index", type: :view do
  before(:each) do
    assign(:tracings, [
      Tracing.create!(
        :descripcion => "Descripcion",
        :valor => 2
      ),
      Tracing.create!(
        :descripcion => "Descripcion",
        :valor => 2
      )
    ])
  end

  it "renders a list of tracings" do
    render
    assert_select "tr>td", :text => "Descripcion".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
