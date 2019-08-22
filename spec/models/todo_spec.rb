require 'rails_helper'

RSpec.describe Todo, :type => :model do
  subject { described_class.new }

  it "is valid with valid attributes" do
    subject.title = "Anything"
    subject.status ="completed"
    subject.group="home"
    subject.priority=1
    subject.description = "Anything"
    expect(subject).to be_valid
  end

  it "is not valid without a title" do
    expect(subject).to_not be_valid
  end

  it "is not valid without a description" do
    subject.title = "Anything"
    expect(subject).to_not be_valid
  end

  it "is not valid without a start_date" do
    subject.title = "Anything"
    subject.description = "Lorem ipsum dolor sit amet"
    expect(subject).to_not be_valid
  end

 
end