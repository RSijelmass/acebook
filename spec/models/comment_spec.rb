require 'rails_helper'

RSpec.describe Comment, type: :model do
	let(:comment) { Comment.create(body: "The internet is so lame. Rage quit!", commenter: "ColinisCool") }

	describe 'creating a comment' do 
		it 'should have a body' do
			expect(comment.body).to eq "The internet is so lame. Rage quit!"
		end
		
		it 'should have a commenter' do
			expect(comment.commenter).to eq "ColinisCool"
		end
end	
end
