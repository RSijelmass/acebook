require 'rails_helper'

RSpec.describe Post, type: :model do
  it { is_expected.to be }

	describe 'it can take a message' do 
		it 'contains a body' do
		 	post = Post.create(message: 'Some body baby')
			expect(post.message).to eq('Some body baby')
		end
	end	
end
