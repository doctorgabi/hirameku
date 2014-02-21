require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { "Hirameku Flash Card App" }

  describe "Home page" do

    it "should have the content ’ひらめく’" do
      visit '/static_pages/home'
      expect(page).to have_content('ひらめく')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title} | Home")
    end
  end


  describe "About page" do

    it "should have the content 'Nashville Software School'" do
      visit '/static_pages/about'
      expect(page).to have_content('Nashville Software School')
    end

    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | About")
    end
  end
end
