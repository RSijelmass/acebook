require 'rails_helper'

RSpec.feature "Commenting", type: :feature do

  scenario "Can submit comments on existing posts and view them" do
    sign_up
		create_post
    click_link('Show')
    fill_in "Commenter", with: "Rita"
    fill_in "Body", with: "I approve this message! :thumbsup:"
    click_button "Create Comment"
    expect(page).to have_content('I approve this message!')
  end

end
