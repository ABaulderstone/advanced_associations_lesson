require 'rails_helper'

RSpec.describe Author, type: :model do
  describe "full_name" do 
    it "should return a string" do 
      author = build(:author)
      expect(author.full_name).to be_a(String)
    end
    
    it "should be correctly formatted" do 
      author = build(:author, first_name: "Homer", last_name: "Simpson")
      expect(author.full_name).to eq("Homer Simpson")
    end
  end 

    describe "age" do 
      it "should return a number" do 
        author = build(:author)
        expect(author.age).to be_a(Integer)
      end
      
      it "should return the correct age" do 
        author = build(:author, date_of_birth: 5.years.ago)
        expect(author.age).to eq(5)
      end 
  end 
end
