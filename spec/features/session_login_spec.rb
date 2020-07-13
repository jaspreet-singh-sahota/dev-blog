require 'rails_helper'

RSpec.describe 'login page', type: :feature do
  let(:user) { User.create!(name: 'jassi') }

  scenario 'with invalid params' do
    sign_up_user('')
    expect(current_path).to eq('/users/sign_in')
    expect(page).to have_content('Worng User-Name')
  end

  scenario 'login page' do
    visit '/users/sign_in'
    fill_in 'session_name', with: user.name
    click_button 'Log in'
    expect(page).to have_content('Logged in successfully')
  end
end
