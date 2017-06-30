 def create_post(message = 'I made a post!')
	click_button 'Post Something'
	fill_in 'Message', with: message
	click_button 'Submit'
 end
