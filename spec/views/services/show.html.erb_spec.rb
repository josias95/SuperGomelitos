require 'rails_helper'

RSpec.describe "services/show", type: :view do
  before(:each) do
    @service = assign(:service, Service.create!(
      :nombre => "Nombre",
      :descripcion => "MyText",
      :valor => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
  end
end
