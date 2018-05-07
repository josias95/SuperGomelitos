require 'rails_helper'

RSpec.describe "Tracings", type: :request do
  describe "GET /tracings" do
    it "works! (now write some real specs)" do
      get tracings_path
      expect(response).to have_http_status(200)
    end
  end
end
