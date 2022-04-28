require "rails_helper"

RSpec.describe "Home page request", :type => :request do
  it "creates a list of all movies and redirects to Movies index page" do
    get "/"
    expect(response).to render_template(:index)
  end
end