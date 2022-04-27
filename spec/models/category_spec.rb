require 'rails_helper'

RSpec.describe Category, type: :model do
  subject{
    described_class.new(name: "fantasy", 
                        description: "description of fantasy")
  }

  describe "Associations" do
    it {should have_many(:movie_categories)}
    it {should have_many(:movies).through(:movie_categories).source(:movie) }
  end

  
end