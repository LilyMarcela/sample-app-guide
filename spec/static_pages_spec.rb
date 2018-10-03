require 'rails_helper'
require "support/render_views"

RSpec.describe StaticPagesController, :type => :controller do
  describe "GET home" do
    it "displays the home page" do
      get 'home' 
      expect(response).to render_template :home
    end
    it "display title h1" do
      get :home
      expect(response.body).to match /<h1>Sample/
    end
  end
end

RSpec.describe StaticPagesController, type: :routing do
  describe 'routing' do
    it 'routes to home' do
      expect(get: 'static_pages/home').to route_to('static_pages#home')
    end
  end
end