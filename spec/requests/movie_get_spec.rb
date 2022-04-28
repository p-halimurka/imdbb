require "rails_helper"

RSpec.describe "Movie get request", :type => :request do
  it "Loads movie and redirects to movie show page" do
    get "/movies/1"
    expect(response).to render_template(:show)
  end
end