require 'rails_helper'

RSpec.describe Product, type: :model do

  subject {
        described_class.new(UPC: 78973, SKU: "SBDN_2G2174-GUNBLK", QTY: 10, weight: "0.10oz", dimensions: "10 x 20 x 1", flammable: 'no', supplier: "China CO")
    } 

   describe "Validations" do
        it "is valid with valid attributes" do 
            expect(subject).to be_valid
        end

        it "is not valid without a UPC" do 
            subject.UPC = nil
            expect(subject).to_not be_valid
        end
        
        it "is not valid without a SKU" do 
            subject.SKU = nil
            expect(subject).to_not be_valid
        end 
    end 

end