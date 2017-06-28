 def create_post(message = 'I made a post!')
	click_link 'New post'
	fill_in 'Message', with: message 
	click_button 'Submit'
 end
