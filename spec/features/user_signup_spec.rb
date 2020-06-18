require 'rails_helper'

RSpec.describe 'signup page', type: :feature do
  let(:user) { User.create!(name: 'jassi') }

  scenario 'signup page user already taken' do
    visit '/users/sign_up'
    fill_in 'Username', with: user.name
    click_button 'Sign up'
    expect(page).to have_content('Name has already been taken')
  end

  scenario 'signup page' do
    visit '/users/sign_up'
    fill_in 'Username', with: 'jaspreet'
    click_button 'Sign up'
    expect(page).to have_content('Welcome! You have signed up successfully.')
  end
end