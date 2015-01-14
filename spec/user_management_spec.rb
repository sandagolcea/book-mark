require 'user'


feature 'User signs up' do

  scenario 'when being a new user visiting the site' do
    expect{ sign_up }.to change(User, :count).by 1
    expect(page).to have_content("Welcome steph@gmail.com")
    expect(User.first.email).to eq "steph@gmail.com"
  end

  scenario "with a password that doesn't match" do
    expect{ sign_up('a@a.com', 'pass', 'wrong')}.to change(User, :count).by 0
    expect(current_path).to eq '/users'
    expect(page).to have_content("Sorry, your passwords don't match.")
  end

  def sign_up(email="steph@gmail.com",
    password="whatever_string_you_want",
    password_confirmation="whatever_string_you_want")
    visit '/users/new'
    expect(page.status_code).to eq 200
    fill_in :email, with: email
    fill_in :password, with: password
    fill_in :password_confirmation, with: password_confirmation
    click_button "Sign up"
  end
  
end