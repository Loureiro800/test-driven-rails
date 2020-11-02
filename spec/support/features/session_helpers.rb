module Features
  module SessionHelpers

    def sign_in
      visit new_session_path
      fill_in 'Email', with: 'pedro@kudocs.co.uk'
      click_on 'Sign in'
    end

  end
end
