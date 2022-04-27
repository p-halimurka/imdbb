require 'rails_helper'

RSpec.describe MoviesController, type: :controller do
  # index action
  describe 'GET #index' do
    it "is expected to assing movies instance variable" do
      get :index
      expect(assigns[:movies]).to match_array(Movie.all)
    end
  end

  describe 'GET #show' do
    it "is expected to find movie from database" do 
      get :show, params: {id: 1}
      expect(assigns[:movie].id).to eq(1)
    end
  end
end