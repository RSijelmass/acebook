describe 'user can see profiles' do

		before do
			sign_up('colin@curd.org', 'Colin')
		end

    it ' - visit own profile' do
      click_link('My Profile')
      expect(page).to have_content('Colin')
    end

end
