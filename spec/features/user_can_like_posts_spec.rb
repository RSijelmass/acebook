describe 'user can like posts' do

	describe 'see the number of likes' do
		it 'has an initial like value of 0' do
			sign_up
			create_post
			visit '/posts'
			expect(page).to have_content 'Likes: 0'
		end
	end

	describe 'liking a post' do
		before do
			sign_up
			create_post
			visit '/posts'
		end

		it 'user can like a post' do
			click_link 'Like'
			expect(page).to have_content 'Likes: 1'
		end

		it 'only once each' do
			click_link 'Like'
			click_link 'Like'
			expect(page).to have_content 'Likes: 0'
		end
	end

end
