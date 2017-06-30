FactoryGirl.define do
  factory :source do
    url "breitbart.com"
    type_one "Political"
    type_two "Unreliable"
    type_three "Bias"
    notes nil
    location nil
    source 'OpenSources'
  end
end
