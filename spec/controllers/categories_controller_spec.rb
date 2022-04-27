require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  # index action
  describe 'GET #index' do
    it "is expected to assing categories instance variable" do
      get :index
      expect(assigns[:categories]).to match_array(Category.all)
    end
  end

  describe 'GET #show' do
    it "is expected to find category from database" do 
      get :show, params: {id: 1}
      expect(assigns[:category].id).to eq(1)
    end
  end

 
end