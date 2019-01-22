require "rails_helper"

RSpec.describe DentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dents").to route_to("dents#index")
    end


    it "routes to #show" do
      expect(:get => "/dents/1").to route_to("dents#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/dents").to route_to("dents#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dents/1").to route_to("dents#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dents/1").to route_to("dents#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dents/1").to route_to("dents#destroy", :id => "1")
    end

  end
end
