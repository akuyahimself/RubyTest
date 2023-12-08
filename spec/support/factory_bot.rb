# spec/support/factory_bot.rb

RSpec.configure do |config|
  config.before(:suite) do
    FactoryBot.reload
  end
end