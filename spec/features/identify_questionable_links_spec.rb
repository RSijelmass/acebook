describe 'Questionable links' do
  let(:source) { FactoryGirl.build(:source) }
  
  it 'are checked against the Source database and tagged in posts' do
    sign_up
    create_post('Check out this horrible site, itz grrrrr8 www.breitbart.com !')
    expect(page).to have_content('Political')
  end
end
