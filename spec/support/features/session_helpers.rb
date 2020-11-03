module Features
  module SessionHelpers

    def sign_in
      sign_in_as 'pedro@kudocs.co.uk'
    end

    def sign_in_as(email)
      visit root_path
      fill_in 'Email', with: email
      click_on 'Sign in'
    end

  end
end
