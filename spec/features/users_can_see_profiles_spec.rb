describe 'user can see profiles' do

		before do
			sign_up('colin@curd.org', 'Colin')
		end

    it ' - visit own profile' do
      click_link('My Profile')
      expect(page).to have_content('Colin')
    end

		it ' - visit own profile' do
			create_post('I should see this')
			click_link('My Profile')
			expect(page).to have_content('I should see this')
    end

end
