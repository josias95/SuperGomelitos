require "rails_helper"

RSpec.describe TracingsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/tracings").to route_to("tracings#index")
    end

    it "routes to #new" do
      expect(:get => "/tracings/new").to route_to("tracings#new")
    end

    it "routes to #show" do
      expect(:get => "/tracings/1").to route_to("tracings#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/tracings/1/edit").to route_to("tracings#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/tracings").to route_to("tracings#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/tracings/1").to route_to("tracings#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/tracings/1").to route_to("tracings#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tracings/1").to route_to("tracings#destroy", :id => "1")
    end

  end
end
