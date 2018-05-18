require "rails_helper"

feature "User completes todo" do
  scenario "successfully" do
    sign_in
    create_todo("Buy milk")
    click_on "Mark as completed"
    click_on "Mark as incomplete"
    expect(page).not_to display_completed_todo('Buy milk')
    expect(page).to display_todo "Buy milk"
  end

end

