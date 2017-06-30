describe 'Questionable links' do
  let(:source) { FactoryGirl.build(:source) }
 
	before(:each) do
    Source.create(url: "breitbart.com",
    type_one: "Political",
    type_two: "Unreliable",
    type_three: "Bias",
    notes: nil,
    location: nil,
    source: 'OpenSources')
  end
 
  it 'are checked against the Source database and tagged in posts' do
    sign_up
    create_post('Check out this horrible site, itz grrrrr8 www.breitbart.com !')
		expect(page).to have_content('Political')
  end
end
