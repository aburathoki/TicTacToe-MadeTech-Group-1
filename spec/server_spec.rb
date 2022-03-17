require 'capybara/rspec'
Capybara.app = Sinatra::Application

describe 'home page', type: :feature do
  it 'displays correct text' do
    visit '/'
    expect(page).to have_content("deployment with ci")
  end
end