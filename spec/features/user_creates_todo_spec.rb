require 'rails_helper'

feature "User creates todo", type: :feature do

  scenario "successfuly" do
    sign_in

    click_on 'Add a new todo'
    fill_in 'Title', with: 'Buy milk'
    click_on 'Add'

    expect(page).to have_css '.todos li', text: 'Buy milk'
  end

end
