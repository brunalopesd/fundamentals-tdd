
require "rails_helper"

feature "user creates person" do
  scenario "with valid data" do
    visit new_person_url

    fill_in "Name",	with: "Bruna" 

    click_button "Submmit"

    expect(page).to have_content ("Thanks") 
    #####

  end
end