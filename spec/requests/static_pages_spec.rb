require 'spec_helper'

describe "Static Pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App"}

  describe "Home Page" do

    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit root_path
      expect(page).to have_content('Sample App')
    end

    it "should have the right title 'Home'" do
      visit root_path
      expect(page).to have_title("#{base_title} | Home")
    end
  end

  describe "Help page" do

  	it "should have the content 'Help'" do
  		visit help_path
  		expect(page).to have_content('Help')
  	end
    it "should have the right title 'Help'" do
      visit help_path
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit about_path
      expect(page).to have_content('About Us')
    end
    it "should have the right title 'About Us'" do
      visit about_path
      expect(page).to have_title("#{base_title} | About")
    end
  end

  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit contact_path
      expect(page).to have_content('Contact')
    end
    it "should have the right title 'Contact'" do
      visit contact_path
      expect(page).to have_title("#{base_title} | Contact")
    end
  end
end
