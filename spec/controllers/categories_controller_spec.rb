require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  
  describe 'GET #index' do

    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end

    it "is expected to assing categories instance variable" do
      get :index
      expect(assigns[:categories]).to match_array(Category.all)
    end
  end

  describe 'GET #show' do

    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end

    it "is expected to find category from database" do 
      get :show, params: {id: 1}
      expect(assigns[:category].id).to eq(1)
    end

    it "is expected to load all movies of a given category" do
      get :show, params: {id: 1}
      expect(assigns[:category_movies]).to match_array([])
    end
  end

 
end