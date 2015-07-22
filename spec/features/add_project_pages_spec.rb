require 'rails_helper'

describe "the add project process" do
  it "will add a project to a skill" do
    skill = Skill.create(name: "Ember", description: "A language")
    visit skill_path(skill)
    click_link "Add a project"
    fill_in "Name", with: "Ember Project"
    fill_in "Description", with: "A project to show Ember"
    fill_in "Link", with: "www.ember.com"
    click_on "Create Project"

    expect(page).to have_content "A language"
  end

  it "will show errors if the form is blank" do
    skill = Skill.create(name: "Java", description: "Another language")
    visit skill_path(skill)
    click_link "Add a project"
    click_on "Create Project"

    expect(page).to have_content "All forms must be filled:"
  end
end
