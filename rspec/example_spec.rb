# frozen_string_literal: true

RSpec.describe 'Example' do
  context 'should work in case of' do
    it false do
      expect(false).to be_falsy
    end
    it true do
      expect(true).to be_truthy
    end
    xit 'postponed' do
    end
  end
end
