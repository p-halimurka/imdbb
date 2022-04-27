require 'rails_helper'

RSpec.describe MovieCategory, type: :model do
  subject{
    described_class.new}
  

  describe "Associations" do
    it {should belong_to(:movie)}
    it {should belong_to(:category)}
  end

  describe "Destructions" do
    
    it "Movie shouldn't be deleted when movie category is deleted" do
      expect {subject.destroy}.to change(Movie, :count).by(0)
    end

    it "Category shouldn't be deleted when movie category is deleted" do
      expect {subject.destroy}.to change(Category, :count).by(0)
    end


  end
end