require 'rails_helper'

FactoryBot.factories.map(&:name).each do |factory_name|
    describe "The #{factory_name} factory" do 
        it "is valid" do 
            expect(build(factory_name)).to be_valid
        end 
    end
end

RSpec.describe "Author Factory" do 
    context "property checking" do 
        before(:all) do 
            @author = build(:author)
        end
        it "first name should be Cormac" do 
            expect(@author.first_name).to eq "Cormac"
        end
        it "last name should be McCarthy" do 
            expect(@author.last_name).to eq "McCarthy"
        end
    end
end 

RSpec.describe "Address Factory" do 
    context "association checking" do 
        it "is associated with an Author" do 
            address = build(:address)
            expect(address.author.full_name).to eq "Cormac McCarthy"
        end
    end
end 