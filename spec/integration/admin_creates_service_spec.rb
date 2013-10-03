require "helper"

feature "Admin creates a new service" do

  scenario "with valid data" do
    FactoryGirl.create(:user, email: 'email@gmail.com')
    visit new_service_path
    login
    create_new_service
    expect_to_be_on_service_page
  end

  def login
    fill_in 'Email',    with: 'email@gmail.com'
    fill_in 'Password', with: 'password'
    click_button 'Sign in'
  end

  def create_new_service
    fill_in 'Name', with: 'Google'
    fill_in 'Url', with: "http://www.google.com"
    fill_in 'Description', with: 'Description'
    # fill_in 'Categories', with: 'Cat1, Cat2'
    click_button 'CREATE SERVICE'
  end

  def expect_to_be_on_service_page
    expect(page).to have_content('New service created!')
    expect(page).to have_content('Google')
    expect(page).to have_content('Description')
  end
end