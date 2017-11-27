RSpec.describe Resolvers::CreateLink do
  before do
    params = nil, { url: 'http://example.com', description: 'description' }, {}
    @link = Resolvers::CreateLink.new.call(*params)
  end

  it 'creates a new record in db' do
    expect(@link.persisted?).to be_truthy
  end

  it 'returns link with description and url' do
    expect(@link.description).to eq 'description'
    expect(@link.url).to eq 'http://example.com'
  end
end
