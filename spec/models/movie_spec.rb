require 'rails_helper'

RSpec.describe Movie, type: :model do
  
  subject{
    described_class.new(title: "Spider Man", 
                        description: "description of SM", 
                        category_ids: [] )
  }
 

  describe "Associations" do
    it {should have_many(:movie_categories)}
    it {should have_many(:categories).through(:movie_categories).source(:category) }
  end
end