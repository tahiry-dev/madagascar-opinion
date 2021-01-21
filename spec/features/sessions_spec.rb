require 'rails_helper'

RSpec.feature 'Sessions', type: :feature do
  before(:each) do
    @user = User.new(username: 'Tahiry', fullname: 'RANDRIAMIARINTSOA')
    @user.save
  end

  scenario 'Registered user could login with username' do
    visit login_path

    fill_in 'Username', with: 'Tahiry'

    click_button 'Log into my account'
    expect(page).to have_content('Welcome Back!')
  end

  scenario 'Registered user could logout' do
    visit login_path

    fill_in 'Username', with: 'Tahiry'

    click_button 'Log into my account'

    click_link 'LOGOUT'
    expect(page).to have_content('Thanks for your opinions, see you later!')
  end
end
