require "rails_helper"

feature "User completes todo" do
  scenario "successfully" do
    sign_in
    click_on "Add a New Todo"
    fill_in "Title", with: "Buy milk"
    click_on "Create Todo"
    click_on "Mark as completed"
    expect(page).to have_css '.todos li.completed', text: 'Buy milk'



  end

end
