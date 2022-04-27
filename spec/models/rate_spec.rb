require 'rails_helper'
 
RSpec.describe Rate, type: :model do
  let(:rater) {
    User.new(name: "jack", username: "jack01", email: "jack@din.com", password: "qwertyuiop")
  }



  subject{
    described_class.new(rater_id: 1,
                        rateable_type: "Movie",
                        rateable_id: 1,
                        stars: 5.0, 
                        dimension: 'rating_value')
  }

  describe "Associations" do
    it {should belong_to(:rater)}
    it {should belong_to(:rateable)}
  end


end