require 'rails_helper'

RSpec.describe Comment, type: :model do
	let(:comment) { Comment.create(body: "The internet is so lame. Rage quit!", user_id: 10000000) }

	describe 'creating a comment' do
		it 'should have a body' do
			expect(comment.body).to eq "The internet is so lame. Rage quit!"
		end

		it 'should have a user id' do
			expect(comment.user_id).to eq 10000000
		end
end
end
