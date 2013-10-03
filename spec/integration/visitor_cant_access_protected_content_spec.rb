require "helper"

feature "Visitor can't access protected content" do

  scenario "visits create service path" do
    visit new_service_path
    expect(current_url).to eq new_user_session_url
  end
end