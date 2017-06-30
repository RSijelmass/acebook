require 'rails_helper'

RSpec.describe Source, type: :model do
  before(:each) do
    Source.create(url: "breitbart.com",
    type_one: "Political",
    type_two: "Unreliable",
    type_three: "Bias",
    notes: nil,
    location: nil,
    source: 'OpenSources')
  end

  it 'matches links from the Source to links in a string' do
    post = "www.breitbart.com"
    links = Source.pluck(:url)
    check = links.any? { |url| post.include?(url)}
    expect(check).to eq(true)
  end
end
