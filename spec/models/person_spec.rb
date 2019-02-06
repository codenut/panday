require "spec_helper"

describe Person, type: :model do
  let(:person) { build(:person) }

  describe "#create" do
    context "valid person" do
      it "should create a person in panday database" do
        person.save
        expect(person).not_to be_nil
        expect(person).to be_valid
      end

      it "should have at least phone number present" do
        person = create(:person, username: Faker::Name.unique.name,
                        email: nil,
                        phone_number: Faker::PhoneNumber::unique.phone_number)
        expect(person).not_to be_nil
        expect(person).to be_valid
      end
    end

    context "invalid person" do
      it "should not create a person with no email or phone number" do
        person = build(:person, email: nil, phone_number: nil)
        expect(person).not_to be_nil
        expect(person).not_to be_valid
      end
    end
  end

  describe "#update_attributes" do
    context "valid person" do
      it "should update person" do
        person.save
        person.update_attributes(first_name: 'Mike')
        expect(person.first_name).to eq('Mike')
      end
    end
  end
end
