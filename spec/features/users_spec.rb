require 'rails_helper'

RSpec.feature 'Users', type: :feature do
  context 'create new user' do
    scenario 'should be successful' do
      visit new_user_path
      within('form') do
        fill_in 'Username', with: 'John'

        fill_in 'Fullname', with: 'Cena'
      end
      click_button 'Create my account'
      expect(page).to have_content('Welcome to Madagascar-Opinion')
    end

    scenario 'should fail' do
      visit new_user_path
      within('form') do
        fill_in 'Username', with: ''

        fill_in 'Fullname', with: ''
      end
      click_button 'Create my account'
      expect(page).to have_content('The form contains 2 errors')
    end
  end

  context 'Login' do
    it "couldn't accept me with wrong details" do
      visit login_path
      within('form') do
        fill_in 'Username', with: 'John'
      end
      click_button 'Log into my account'
      expect(page).to have_content('Invalid Username, Please try again')
    end
  end
end
