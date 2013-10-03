require File.expand_path("spec/helper")

feature "Visitor views list of services" do

  scenario "lists the services on the page" do
    @service_one = FactoryGirl.create(:service_record, name: 'NAME 1', description: 'DESC 1')
    @service_two = FactoryGirl.create(:service_record, name: 'NAME 2', description: 'DESC 2')
    visit root_path
    expect(page).to have_content 'NAME 1'
    expect(page).to have_content 'NAME 2'
    expect(page).to have_content 'DESC 1'
    expect(page).to have_content 'DESC 2'
  end
end