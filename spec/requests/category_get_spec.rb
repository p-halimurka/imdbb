require "rails_helper"

RSpec.describe "Category get request", :type => :request do
  it "Loads list of movies and redirects to category show page" do
    get "/categories/2"
    expect(response).to render_template(:show)
  end
end