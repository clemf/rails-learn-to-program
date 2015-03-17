require 'rails_helper'

describe "the add a lesson process" do
  it "adds a new lesson" do
    visit lessons_path
    click_on 'Add a new lesson'
    fill_in 'Name', :with => 'Test Lesson'
    fill_in 'Text', :with => 'This is a test lesson.'
    fill_in 'Number', :with => '1'
    click_on 'Create Lesson'
    expect(page).to have_content 'Lessons'
  end
end
