require 'rails_helper'

RSpec.describe "Situations", type: :request do
  describe "GET /situations" do
    it "works! (now write some real specs)" do
      get situations_path
      expect(response).to have_http_status(200)
    end
  end
end
