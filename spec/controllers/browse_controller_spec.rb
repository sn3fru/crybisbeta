require 'rails_helper'

RSpec.describe BrowseController, :type => :controller do

  describe "GET home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET profile" do
    it "returns http success" do
      get :profile
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET message" do
    it "returns http success" do
      get :message
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET aboutus" do
    it "returns http success" do
      get :aboutus
      expect(response).to have_http_status(:success)
    end
  end

end
