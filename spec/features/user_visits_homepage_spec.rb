require "rails_helper"

feature "User visits homepage" do
  scenario "successfully" do
    visit root_path
    sign_in
    check_css('h1', 'Todos')
  end
end
