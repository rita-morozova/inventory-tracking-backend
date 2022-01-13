require 'rails_helper'

RSpec.describe Supplier, type: :model do

  subject {
        described_class.new(supplier_code: "2377783", name: "Ajax.Co")
    } 

   describe "Validations" do
        it "is valid with valid attributes" do 
            expect(subject).to be_valid
        end

        it "is not valid without a supplier_code" do 
            subject.supplier_code = nil
            expect(subject).to_not be_valid
        end
        
        it "is not valid without a name" do 
            subject.name = nil
            expect(subject).to_not be_valid
        end 
    end 

end