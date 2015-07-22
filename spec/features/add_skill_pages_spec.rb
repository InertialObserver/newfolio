require "rails_helper"

describe "the process to add a skill" do
  it "will add a new skill" do
    visit root_path #change this later when home page location changes
    click_on "Create a new skill"
    fill_in "Name", with: "Ruby"
    fill_in "Description", with: "A backend language"
    click_on "Create Skill"

    expect(page).to have_content("A backend language")
  end

  it "will show flash error message when form is blank" do
    visit new_skill_path
    click_on "Create Skill"
    expect(page).to have_content("All forms must be filled:")
  end
end
