require 'spec_helper'

describe "Risks" do
  context "creating a new risk" do
    it "goes to the correct page" do
      visit new_risk_path

      page.should have_content 'New Risk'
    end

    it "it shows an error message if required fields not set" do
      visit new_risk_path

      click_on "Create"

      page.should have_content 'Title is required'
      page.should have_content 'Impact is required'
      page.should have_content 'Likeliness is required'
    end
  end
end