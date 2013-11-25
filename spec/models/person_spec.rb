require 'spec_helper'

describe Person do
  it "is valid" do
    expect(Person.new(first_name: 'Alice', last_name: 'Smith')).to be_valid
  end

  it "is invalid without a first name" do
    person = Person.new(first_name: nil)
    expect(person).to_not be_valid
  end

  it "is invalid without a last name" do
    person = Person.new(first_name: "Alice", last_name: nil)
    expect(person).to_not be_valid
  end
end
