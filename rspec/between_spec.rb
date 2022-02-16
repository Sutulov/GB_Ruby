# frozen_string_literal: true

RSpec.describe 'Number' do
  it 'must be in the range' do
    expect(5).to be_between(1, 10)
  end
end
