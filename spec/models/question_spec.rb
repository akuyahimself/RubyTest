# spec/models/question_spec.rb

require 'rails_helper'

RSpec.describe Question, type: :model do
  it "is valid with valid attributes" do
    question = build(:question)
    expect(question).to be_valid
  end

  it "is not valid without a body" do
    question = build(:question, body: nil)
    expect(question).to_not be_valid
  end

  it "is not valid without a user_id" do
    question = build(:question, user_id: nil)
    expect(question).to_not be_valid
  end

  it "should save successfully" do
    question = create(:question)
    expect(question.persisted?).to be_truthy
  end



end
