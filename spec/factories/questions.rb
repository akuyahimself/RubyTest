# spec/factories/questions.rb
FactoryBot.define do
  factory :question do
    body { 'Sample question body' }
    user_id { 1 }
  end
end
