describe 'user can like posts' do
	
	describe 'see the number of likes' do
		it 'has an initial like value of 0' do
			Post.create(message: 'Why does nobody like me?')
			visit '/posts'
			expect(page).to have_content 'likes: 0'
		end
	end

end
