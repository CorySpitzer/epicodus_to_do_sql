require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the web app', {:type => :feature}) do
  describe('the add lists path') do
    it('adds a list') do
      visit('/')
      fill_in('title', :with => 'groceries')
      click_button('Add List')
      expect(page).to(have_content('groceries'))
    end
  end


end
