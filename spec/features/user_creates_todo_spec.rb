require 'rails_helper'

feature "User creates todo", type: :feature do

  scenario "successfuly" do
    sign_in
    create_todo('Buy milk')
    expect(page).to display_todo('Buy milk')
  end

end
