require 'ostruct'

RSpec.describe 'The object' do
  context 'key-value' do
    # before(:each) do
    #   @object = OpenStruct.new(key: 'ключ', value: 'значение')
    # end
    let(:object) { OpenStruct.new(key: 'ключ', value: 'значение') }

    it 'must contain a valid key' do
      expect(object.key).to eq 'ключ'
    end
  end
end
