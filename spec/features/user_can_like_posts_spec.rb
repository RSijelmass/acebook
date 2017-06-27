describe 'user can like posts' do

	describe 'see the number of likes' do
		it 'has an initial like value of 0' do
			sign_up
			Post.create(message: 'Why does nobody like me?')
			visit '/posts'
			expect(page).to have_content 'likes: 0'
		end
	end

	describe 'liking a post' do
		before do
			sign_up
			Post.create(message: "Please like me!")
			visit '/posts'
		end

		it 'user can like a post' do
			click_link 'Like'
			expect(page).to have_content 'likes: 1'
		end

		it 'can be liked more than once' do
			click_link 'Like'
			click_link 'Like'
			expect(page).to have_content 'likes: 2'
		end
	end

end
