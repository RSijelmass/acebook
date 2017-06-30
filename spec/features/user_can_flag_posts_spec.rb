describe 'user can flag posts' do

	describe 'flagging a post' do
		before do
			sign_up
			create_post
			visit '/posts'
		end

		it 'user can flag a post' do
			click_link 'Flag Post'
			expect(page).to have_css("img[src*='https://www.emojibase.com/resources/img/emojis/apple/x1f4a9.png.pagespeed.ic.292Eth5N9Z.png']")
		end

    it 'user can unflag a post' do
      click_link 'Flag Post'
      click_link 'Flag Post'
      expect(page).not_to have_css("img[src*='https://www.emojibase.com/resources/img/emojis/apple/x1f4a9.png.pagespeed.ic.292Eth5N9Z.png']")
    end

    it 'user can only see their own flags' do
      click_link 'Flag Post'
      click_button 'Sign out'
      sign_up('rita@curd.com','Rita')
      expect(page).not_to have_css("img[src*='https://www.emojibase.com/resources/img/emojis/apple/x1f4a9.png.pagespeed.ic.292Eth5N9Z.png']")
    end

	end

end
