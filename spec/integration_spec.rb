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
      expect(page).to(have_content('Lists: groceries'))
    end
  end

  describe('the individual list paths') do
    it('allows user to view an individual list from the lists page') do
      visit('/')
      fill_in('title', :with => 'groceries')
      click_button('Add List')
      click_link('Home')
      visit('/')
      fill_in('title', :with => 'chores')
      click_button('Add List')
      click_link('chores')
      expect(page).to(have_content('This is the chores list: '))
    end
  end

  # describe('viewing all of the lists') do
  #   it('will show a list of lists ny using internal list creation') do
  #     list = List.new({:title => 'groceries'})
  #     list.save
  #     visit('/')
  #     click_link('All lists')
  #     expect(page).to(have_content(list.title))
  #   end
  # end

end
