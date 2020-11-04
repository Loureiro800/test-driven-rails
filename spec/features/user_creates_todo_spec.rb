require 'rails_helper'

feature "User creates todo", type: :feature do

  scenario "successfuly" do
    sign_in
    create_todo('Buy milk')
    expect(page).to have_css '.todos li', text: 'Buy milk'
  end

end
