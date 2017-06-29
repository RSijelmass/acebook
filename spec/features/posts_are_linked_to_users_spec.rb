	describe 'posts are linked to users' do
		it 'has a user id after signing in' do
			sign_up('rita@curd.org')
			click_link 'New post'
			fill_in 'Message', with: 'Hello! I\'m user 1!'
			click_button "Submit"
			expect(page).to have_content 'rita@curd.org posted:'
		end
	end
