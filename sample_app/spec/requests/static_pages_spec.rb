require "rails_helper"

RSpec.feature "Static pages", :type => :feature do
  scenario "Visiting the home page" do
    visit "/static_pages/home"
    expect(page).to have_content('Sample App')
  end
  
  scenario "Visiting the help page" do
    visit "/static_pages/help"
    expect(page).to have_content('Help')
  end
  
  scenario "Visiting the about page" do
    visit '/static_pages/about'
	expect(page).to have_content('About Us')
  end
  
  scenario "should have the title 'Home'" do
   visit '/static_pages/home'
   expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
  end
  
  scenario "should have the title 'Help'" do
   visit '/static_pages/help'
   expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
  end
  
  # case 1 ：测试About页面的标题
  scenario "should have the title 'About'" do
   visit '/static_pages/about'
   expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
  end
end