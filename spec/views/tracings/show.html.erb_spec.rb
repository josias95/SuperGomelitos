require 'rails_helper'

RSpec.describe "tracings/show", type: :view do
  before(:each) do
    @tracing = assign(:tracing, Tracing.create!(
      :descripcion => "Descripcion",
      :valor => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Descripcion/)
    expect(rendered).to match(/2/)
  end
end
