require 'rails_helper'

RSpec.describe "Dents", type: :request do
  describe "GET /dents" do
    it "works! (now write some real specs)" do
      get dents_path
      expect(response).to have_http_status(200)
    end
  end
end
