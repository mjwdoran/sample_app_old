require 'spec_helper'

describe "Static Pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home Page" do

  	it "should have the title 'Home'" do
  		visit '/static_pages/home'
  		page.should have_selector('title', :text => "#{base_title} | Home")
  	end

    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end


  end

  describe "Help page" do
 
    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "#{base_title} | Help")
    end

    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

  end

  describe "About page" do

    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "#{base_title} | About")
    end

    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About')
    end

  end

  describe "Contact page" do

    it "should have the right title" do
      visit '/static_pages/contact'
      page.should have_selector('title', :text => "#{base_title} | Contact")
    end

    it "should have the h1 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
    end

  end

end
