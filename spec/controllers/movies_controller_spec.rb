require 'rails_helper'

RSpec.describe MoviesController, type: :controller do
  
  describe 'GET #index' do

    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end

    it "is expected to assing movies instance variable" do
      get :index
      expect(assigns[:movies]).to match_array(Movie.all)
    end

    it "is expected to load all categories" do
      get :index
      expect(assigns[:categories]).to match_array(Category.all)
    end
  end

  describe 'GET #show' do

    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end

    it "is expected to find movie from database" do 
      get :show, params: {id: 1}
      expect(assigns[:movie].id).to eq(1)
    end
  end


end