require 'rails_helper'

RSpec.feature "Timeline", type: :feature do

  before(:each) do
    sign_up
  end

  scenario "Can submit posts and view them" do
    visit "/posts"
    click_link "New post"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
    expect(page.status_code).to be(200)
    expect(page).to have_content("Hello, world!")
  end

  scenario "Can include line breaks to format posts" do
    visit "/posts"
    click_link "New post"
    fill_in "Message", with: "Hello,\n\nworld!"
    click_button "Submit"
    expect(page.status_code).to be(200)
    expect(page).to have_content("Hello,\n\nworld!")
  end

  scenario "Posts have a timestamp" do
		create_post
    expect(page).to have_content(Time.now.strftime('%-d/%m/%Y'))
  end

  scenario "Posts are shown in reverse chronological order" do
		create_post('First')
		create_post('Second')

    expect(page.status_code).to be(200)
    expect(page.body.index('Second') < page.body.index('First')).to be true
  end

  scenario "Links in posts should be clickable" do
    create_post("This is a link: www.google.com")
    click_link("www.google.com")
    expect(page.status_code).to be(200)
  end

end
